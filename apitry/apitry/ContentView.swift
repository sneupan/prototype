//
//  ContentView.swift
//  apitry
//
//  Created by Saskriti Neupane  on 11/6/23.
//


import SwiftUI

struct ContentView: View {
    @State private var instructor: Instructor?
    @State private var errorMessage: String?

    var body: some View {
        VStack(alignment: .leading) {
            if let instructor = instructor {
                Text(instructor.personName)
                    .font(.title)
                Text("PersonID: " + instructor.personName)
            } else {
                Text(errorMessage ?? "No data available")
            }
        }
        .padding(20.0)
        .onAppear {
            fetchData()
        }
    }

    func fetchData() {
        Task {
            do {
                let instructor = try await performAPICall()
                self.instructor = instructor
            } catch {
                self.errorMessage = "Error: \(error.localizedDescription)"
                self.instructor = nil
            }
        }
    }

    func performAPICall() async throws -> Instructor {
        let url = URL(string: "http://localhost:8080/waitlist/waitlistactivityofferings?personId=90000001&termId=kuali.atp.FA2023-2024")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let instructor = try JSONDecoder().decode(Instructor.self, from: data)
        return instructor
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

