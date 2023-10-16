//
//  TechnologyView.swift
//  agoraproto

import SwiftUI


struct TechnologyView: View {
    @State private var selectedTab = 4 // Default selected tab index is 4 (Tech)
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("wow"), Color("hi")]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack(spacing: 32) {
                        VStack(spacing: 24) {
                            Text("Technology Help")
                                .font(Font.custom("Caprasimo-Regular", size: 32))
                                .foregroundColor(.black)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.blu)
                                .frame(width: 350, height: 290)
                                .overlay(
                                    VStack(spacing: 20) {
                                        Text("Support Information")
                                            .font(Font.custom("Mukta-Light", size: 28))
                                            .foregroundColor(.white)
                                            .font(.title)
                                        
                                        Text("Call: 617-552-4257")
                                            .foregroundColor(.white)
                                            .font(.headline)
                                        
                                        Text("Email: help_center@bc.edu")
                                            .foregroundColor(.white)
                                            .font(.subheadline)
                                        
                                        NavigationLink(destination: Text("Live Tech Support Chat")) {
                                            Text("Live Tech Support Chat")
                                                .foregroundColor(.white)
                                                .padding()
                                                .frame(maxWidth: .infinity)
                                                .background(Color.blue)
                                                .cornerRadius(20)
                                                .font(.headline)
                                                .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 1)
                                        }
                                        .padding(.horizontal, 16)
                                    }
                                        .padding(32)
                                        .alignmentGuide(.top) { _ in 32 }
                                )
                                .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)
                        }
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.blu)
                            .frame(width: 350, height: 290)
                            .padding()
                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 1)
                            .offset(y: -1)
                            .overlay(
                                VStack {
                                    Text("Walk-in Hours")
                                        .font(.title)
                                        .frame(maxWidth: .infinity)
                                    HStack {
                                        Text("O'Neill 316")
                                            .font(.headline)
                                        Image("location")
                                            .resizable()
                                            .frame(width: 42, height: 42)
                                    }
                                    Text("Monday to Thursday: 8am - 11pm")
                                        .font(.subheadline)
                                    Text("Friday: 7am - 10pm")
                                        .font(.subheadline)
                                    Text("Saturday: 10am - 6pm")
                                        .font(.subheadline)
                                    Text("Sunday: 11am - 7pm")
                                        .font(.subheadline)
                                }
                            )
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.blu)
                            .frame(width: 350, height: 290)
                            .padding()
                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 1)
                            .offset(y: -1)
                            .overlay(
                                VStack {
                                    Text("How to Print")
                                        .font(.title)
                                        .frame(maxWidth: .infinity)
                                    NavigationLink(destination: Text("Instructions for MAC")) {
                                        Text("MAC")
                                            .foregroundColor(.white)
                                            .padding()
                                            .frame(maxWidth: .infinity)
                                            .background(Color.blue)
                                            .cornerRadius(20)
                                            .font(.headline)
                                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 1)
                                    }
                                    .padding(.horizontal, 50)
                                    NavigationLink(destination: Text("Instructions for Windows")) {
                                        Text("Windows")
                                            .foregroundColor(.white)
                                            .padding()
                                            .frame(maxWidth: .infinity)
                                            .background(Color.blue)
                                            .cornerRadius(20)
                                            .font(.headline)
                                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 1)
                                    }
                                    .padding(.horizontal, 50)
                                    
                                }
                            )
                        
                        // Horizontal Scroll View with Navigation Links
                        HStack(spacing: 0) {
                            NavigationLink(destination:  HomeView(showSignInView: .constant(false))) {
                                TabBarButton(destination:  HomeView(showSignInView: .constant(false)), imageName: "house.fill", label: "Home")
                            }
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            
                            NavigationLink(destination: ResourceView()) {
                                TabBarButton(destination: ResourceView(), imageName: "book.fill", label: "Resource")
                            }
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .padding(.horizontal, 1) // Add horizontal padding to accommodate the word "Resource"
                            
                            NavigationLink(destination: AcademicsView()) {
                                TabBarButton(destination: AcademicsView(), imageName: "pencil.and.outline", label: "Study")
                            }
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            
                            NavigationLink(destination: DiningView()) {
                                TabBarButton(destination: DiningView(), imageName: "utensils", label: "Dine")
                            }
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            
                            NavigationLink(destination: TechnologyView()) {
                                TabBarButton(destination: TechnologyView(), imageName: "gear", label: "Tech")
                            }
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                        }
                        .frame(height: 100)
                        .padding(.horizontal, 16) // Add horizontal padding
                        .background(Color("wow")) // Use "wow" color for the background of the navigation bar
                    }
                    .padding(.bottom, -40)
                    .foregroundColor(.white)
                }
                .navigationBarTitle("Technology Information", displayMode: .inline)
            }
        }
    }
}

struct TechnologyView_Previews: PreviewProvider {
    static var previews: some View {
        TechnologyView()
    }
}

