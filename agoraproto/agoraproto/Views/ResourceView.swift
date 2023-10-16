//
//  ResourceView.swift
//  agoraproto
//
//  Created by Saskriti Neupane  on 7/11/23.
//

import SwiftUI


struct ResourceView: View {
    @StateObject private var viewModel = ResourceViewModel()

    var body: some View {
        ZStack {
            Color.lightGray
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 16) {
                // Horizontal Scroll View with Navigation Links
                Text("What are you looking for?")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(.leading)
                    .frame(maxWidth: .infinity)
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack(spacing: 16) {
                        NavigationLink(destination:  HomeView(showSignInView: .constant(false))) {
                            Text("Home")
                                .foregroundColor(.white)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .background(Color.darkGray)
                                .cornerRadius(15)
                                .font(.headline)
                        }

                        NavigationLink(destination: ResourceView()) {
                            Text("Resource")
                                .foregroundColor(.white)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .background(Color.darkGray)
                                .cornerRadius(15)
                                .font(.headline)
                        }

                        NavigationLink(destination: AcademicsView()) {
                            Text("Study")
                                .foregroundColor(.white)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .background(Color.darkGray)
                                .cornerRadius(15)
                                .font(.headline)
                        }

                        NavigationLink(destination: DiningView()) {
                            Text("Dine")
                                .foregroundColor(.white)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .background(Color.darkGray)
                                .cornerRadius(15)
                                .font(.headline)
                        }

                        NavigationLink(destination: TechnologyView()) {
                            Text("Tech")
                                .foregroundColor(.white)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .background(Color.darkGray)
                                .cornerRadius(15)
                                .font(.headline)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.bottom, 12)
                }

                // Rest of your code with rectangles and content
                VStack(spacing: 16) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(red: 60/255, green: 60/255, blue: 60/255))
                        .frame(width:337, height: 220)
                        .overlay(
                            VStack(spacing: 8) {
                                Text("Need a Study Room?")
                                    .font(Font.custom("Fasthand-Regular", size: 26))
                                    .foregroundColor(.white)

                                Text("Use the link below")
                                    .font(.subheadline)
                                    .foregroundColor(.white)

                                Button(action: {
                                    viewModel.openURL(urlString: "https://libcal.bc.edu/reserve/oneill")
                                }) {
                                    Text("O'Neill")
                                        .foregroundColor(.white)
                                        .font(.headline)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.green)
                                        .cornerRadius(8)
                                }
                                .padding(.horizontal, 16)

                                Button(action: {
                                    viewModel.openURL(urlString: "https://libguides.bc.edu/socialwork/room-reservation")
                                }) {
                                    Text("Social Work")
                                        .foregroundColor(.white)
                                        .font(.headline)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.green)
                                        .cornerRadius(8)
                                }
                                .padding(.horizontal, 16)
                            }
                            .padding(16)
                        )
                        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)

                    VStack(alignment: .leading, spacing: 8) {
                        Text("UHS Appointment")
                            .foregroundColor(.yellow)
                            .font(.title3)
                            .bold()

                        Text("Appointment: 617-552-3225")
                            .foregroundColor(.white)
                            .font(.subheadline)

                        Text("University Counseling Services")
                            .foregroundColor(.yellow) // Highlighted with yellow color
                            .font(.title3)
                            .bold()

                        Text("Regular Working Hours (8:45AM - 4:00PM) Monday to Friday")
                            .foregroundColor(.white)
                            .font(.subheadline)

                        Text("617-552-3310")
                            .foregroundColor(.white)
                            .font(.subheadline)

                        Text("Life Threatening Emergency: Boston Police (617-552-4444)")
                            .foregroundColor(.white)
                            .font(.subheadline)

                        Text("Off-Campus Life Threatening: 911")
                            .foregroundColor(.white)
                            .font(.subheadline)
                    }
                    .padding(16)
                    .background(Color(red: 60/255, green: 60/255, blue: 60/255))
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)
                }
                .padding(.horizontal)
                .padding(.bottom, 100) // Adjust the bottom padding to create space for scrolling
            }
        }
        .navigationBarTitle(Text("Resource"), displayMode: .inline)
        .foregroundColor(.white)
    }
}

struct ResourceView_Previews: PreviewProvider {
    static var previews: some View {
        ResourceView()
    }
}




