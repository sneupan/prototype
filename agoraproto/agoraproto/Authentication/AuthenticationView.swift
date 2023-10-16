//
//  AuthenticationView.swift
//  agoraproto
//
//  Created by Saskriti Neupane  on 8/1/23.
//


import SwiftUI
import GoogleSignIn
import GoogleSignInSwift



//AuthenticationViewModel class  for handling the authentication logic
struct AuthenticationView: View {
    @StateObject private var viewModel = AuthenticationViewModel()
    @Binding var showSignInView: Bool

    var body: some View {
        VStack {
            GoogleSignInButton(viewModel: GoogleSignInButtonViewModel(scheme: .dark, style: .wide, state: .normal)) {
                Task {
                    do {
                        try await viewModel.signInGoogle()
                        showSignInView = false
                    } catch {
                        print(error)
                    }
                }
                
            }
            Spacer()
        }
        .padding()
        .navigationBarTitle("Sign-In")
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AuthenticationView(showSignInView: .constant(false))
        }
    }
}
