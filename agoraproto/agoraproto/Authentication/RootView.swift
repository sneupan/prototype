//
//  RootView.swift
//  agoraproto
//
//  Created by Saskriti Neupane  on 8/1/23.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift
import FirebaseAuth

//managing the navigation flow of the app based on the user's authentication state

struct RootView: View {
    
    @State private var showSignInView: Bool = false //state variable that controls whether the AuthenticationView should be shown or not.
    
    var body: some View{
        ZStack {
            if !showSignInView {
                HomeView(showSignInView: $showSignInView)
            }
        }
        .onAppear {
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignInView = authUser == nil
            
        }
        .fullScreenCover(isPresented: $showSignInView){
            NavigationStack {
                AuthenticationView(showSignInView: $showSignInView)
            }
        }
    }
}



struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

