//
//  SettingViewModel.swift
//  agoraproto
//
//  Created by Saskriti Neupane  on 8/1/23.
//

import Foundation


//interacts with the AuthenticationManager to perform various authentication-related operations, such as loading authentication providers, loading the authenticated user, signing out, resetting the password, updating the email, and updating the password

@MainActor
final class SettingViewModel: ObservableObject {
    
    @Published var authProviders: [AuthProviderOption] = []
    @Published var authUser: authDataResultModel? = nil

    func loadAuthProviders() {
        if let providers = try? AuthenticationManager.shared.getProviders() {
            authProviders = providers
        }
    }
    
    func loadAuthUser() {
        self.authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
    }
    
    func signOut() throws {
        try AuthenticationManager.shared.signOut()
    }
    
    
}

