//
//  AuthenticationManager.swift
//  agoraproto
//
//  Created by Saskriti Neupane  on 8/1/23.
//

import Foundation
import SwiftUI
import GoogleSignIn
import GoogleSignInSwift
import FirebaseAuth

//manages user authentication operations using Firebase Authentication and Google Sign-In

struct authDataResultModel {
    let uid: String
    let email: String?
    let photoUrl: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
    
}

enum AuthProviderOption: String {
    case google = "google.com"
}


final class AuthenticationManager {
    
    static let shared = AuthenticationManager()
    private init() {}
    
    func getAuthenticatedUser() throws -> authDataResultModel {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        return authDataResultModel(user: user)
    }
    
    func getProviders() throws -> [AuthProviderOption] {
        guard let providerData = Auth.auth().currentUser?.providerData else {
            throw URLError(.badServerResponse)
        }
        var providers: [AuthProviderOption] = []
        for provider in providerData {
            if let option = AuthProviderOption(rawValue: provider.providerID) {
                providers.append(option)
            } else {
                assertionFailure("Provider Option not found: \(provider.providerID)")
            }
        }
        print(providers)
        return providers
    }
    func signOut() throws {
        try Auth.auth().signOut()
    }

}


// mark: Sign in SSO
extension AuthenticationManager {
    @discardableResult
    
    func signInWithGoogle(tokens: GoogleSignInResultModel) async throws -> authDataResultModel {
        let credential = GoogleAuthProvider.credential(withIDToken: tokens.idToken, accessToken: tokens.accessToken)
        return try await signIn(credential: credential)
    }
    func signIn(credential: AuthCredential) async throws -> authDataResultModel {
        let authDataResult = try await Auth.auth().signIn(with: credential)
        return authDataResultModel(user: authDataResult.user)
    }
    
    
}
