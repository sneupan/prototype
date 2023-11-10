//
//  APICall.swift
//  apitry
//
//  Created by Saskriti Neupane  on 11/6/23.
//

import Foundation
import SwiftUI


struct courseOfferingTitle: Codable {
    let instructors: [Instructor]
}

struct Instructor: Codable {
    let personName: String
}

func performAPICall() async throws -> Instructor {
    let url = URL(string:"http://localhost:8080/waitlist/waitlistactivityofferings?personId=90000001&termId=kuali.atp.FA2023-2024")!
    let (data, _) = try await URLSession.shared.data(from: url)
    let courseOfferingTitle = try JSONDecoder().decode(courseOfferingTitle.self,from: data)
    return courseOfferingTitle.instructors[0]
}
