//
//  AuthenticationViewModel.swift
//  agoraproto
//
//  Created by Saskriti Neupane  on 8/1/23.
//

import Foundation

@MainActor
final class AuthenticationViewModel: ObservableObject {
        
    func signInGoogle() async throws {
        let helper = SignInGoogleHelper()
        let tokens = try await helper.signIn()
        let authDataResult = try await AuthenticationManager.shared.signInWithGoogle(tokens: tokens)
    }

}
