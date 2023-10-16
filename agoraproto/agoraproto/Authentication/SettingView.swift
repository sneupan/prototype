//
//  SettingView.swift
//  agoraproto
//
//  Created by Saskriti Neupane  on 8/1/23.
//

import SwiftUI

//displays a list of settings related to user authentication
struct SettingView: View {
    
    @StateObject private var viewModel = SettingViewModel()
    @Binding var showSignInView: Bool

    
    var body: some View {
        VStack {
            List {
                Button("Log Out") {
                    Task {
                        do {
                            try viewModel.signOut()
                            showSignInView = true
                        } catch {
                            print(error)
                        }
                    }
                }
            }
        }
        .onAppear {
            viewModel.loadAuthProviders()
            viewModel.loadAuthUser()
        }
        .navigationBarTitle("Welcome")
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SettingView(showSignInView: .constant(false))
        }
    }
}

