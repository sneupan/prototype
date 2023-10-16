//
//  DiningView.swift
//  agoraproto
//

import SwiftUI

struct DiningView: View {
    var body: some View {
        ZStack {
            Color.lightGray
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack(spacing: 32) {
                    VStack(spacing: 24) {
                        Text("Dining Information")
                            .foregroundColor(.white)
                            .font(Font.custom("Caprasimo-Regular", size: 33))
                            .frame(maxWidth: .infinity)
                    }
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.lG)
                        .frame(width: 350, height: 400)
                        .overlay(
                            VStack(spacing: 24) {
                                Text("Let's Eat")
                                    .foregroundColor(.white)
                                    .font(Font.custom("Mukta-Light", size: 33))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Button(action: {
                                    openURL(urlString: "https://www.bc.edu/bc-web/offices/auxiliary-services/sites/dining/locations/dining-menus.html?id=121&date=07/11/2023")
                                }) {
                                    Text("Lower Live")
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.dG)
                                        .cornerRadius(20)
                                        .font(.headline)
                                        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 1)
                                }
                                .padding(.horizontal, 16)

                                Button(action: {
                                    openURL(urlString: "https://www.bc.edu/bc-web/offices/auxiliary-services/sites/dining/locations/dining-menus.html?id=123&date=07/11/2023")
                                }) {
                                    Text("Eagle's Nest")
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.dG)
                                        .cornerRadius(20)
                                        .font(.headline)
                                        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 1)
                                }
                                .padding(.horizontal, 16)
                                
                                Button(action: {
                                    openURL(urlString: "https://www.bc.edu/bc-web/offices/auxiliary-services/sites/dining/locations/dining-menus.html?id=121&date=07/11/2023")
                                }) {
                                    Text("MAC")
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.darkGreen)
                                        .cornerRadius(20)
                                        .font(.headline)
                                        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 1)
                                }
                                .padding(.horizontal, 16)
            
                                Button(action: {
                                    openURL(urlString: "https://www.bc.edu/bc-web/offices/auxiliary-services/sites/dining/locations/dining-menus.html?id=121&date=07/11/2023")
                                }) {
                                    Text("Addies")
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.darkGreen)
                                        .cornerRadius(20)
                                        .font(.headline)
                                        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 1)
                                }
                                .padding(.horizontal, 16)
                            }
                            .padding(32)
                        )
                        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)

                    VStack(alignment: .leading, spacing: 24) {
                        Text("Popular Food Destinations")
                            .foregroundColor(.white)
                            .font(Font.custom("Mukta-Light", size: 30))
                            .frame(maxWidth: .infinity)

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                PopularDestinationCard(destinationName: "Chipotle Mexican Grill",
                                                      imageName: "chipotle",
                                                      reviewsURL: "https://www.google.com/search?q=Chipotle+Cleveland+Circle+Boston+College+reviews",
                                                      directionsURL: "https://www.google.com/maps/dir//Chipotle+Cleveland+Circle+Boston+College",
                                                      addressURL: "https://www.google.com/maps/place/Chipotle+Cleveland+Circle+Boston+College")
                                
                                PopularDestinationCard(destinationName: "Pino's Pizza",
                                                      imageName: "pizza",
                                                      reviewsURL: "https://www.google.com/search?q=pinos+pizza+reviews&rlz=1C5CHFA_enUS988US988&ei=NEK5ZL_1MtLk5NoPuOOuKA&ved=0ahUKEwi_3-qTvZ2AAxVSMlkFHbixCwUQ4dUDCBE&uact=5&oq=pinos+pizza+reviews&gs_lp=Egxnd3Mtd2l6LXNlcnAiE3Bpbm9zIHBpenphIHJldmlld3MyBRAAGIAEMgYQABgWGB4yBhAAGBYYHjIGEAAYFhgeMgYQABgWGB4yBhAAGBYYHjIGEAAYFhgeMgYQABgWGB4yBhAAGBYYHjIGEAAYFhgeSP8JUPYCWIsJcAF4AZABAZgBkQGgAY0FqgEDNi4yuAEDyAEA-AEBwgIKEAAYRxjWBBiwA8ICChAAGIoFGLADGEPCAhYQLhiKBRjHARjRAxjIAxiwAxhD2AEBwgIWEC4YigUYxwEYrwEYyAMYsAMYQ9gBAcICCBAAGIoFGJECwgILEC4YgAQYxwEYrwHCAg4QLhiKBRjHARivARiRAsICCBAAGBYYHhgK4gMEGAAgQYgGAZAGDroGBggBEAEYCA&sclient=gws-wiz-serp#lrd=0x89e37853b7b0b50b:0x91252da6de38e233,1,,,,",
                                                      directionsURL: "https://www.google.com/maps/place/1920+Beacon+St,+Boston,+MA+02135/@42.336587,-71.1518184,17z/data=!3m1!4b1!4m6!3m5!1s0x89e37853b6421589:0x659f0c116fd85864!8m2!3d42.3365831!4d-71.1492381!16s%2Fg%2F11b8y7fc9s?entry=ttu",
                                                      addressURL: "http://pinospizza.com/")
                                
                                // New slide for "Pinos Pizza"
                                PopularDestinationCard(destinationName: "Eagle's Deli",
                                                      imageName: "deli",
                                                      reviewsURL: "https://www.example.com/pinos-pizza-reviews",
                                                      directionsURL: "https://www.example.com/pinos-pizza-directions",
                                                      addressURL: "http://pinospizza.com/")
                            }
                            .padding(.horizontal, 16)
    
                        }
                    }
                    .frame(width: 350, height: 460)
                    .background(Color.lG)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)

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
                    .padding(.horizontal, 16) 
                    .background(Color("wow"))
                }
                .padding(.bottom, -40)
                .foregroundColor(.white)
            }
            .navigationBarTitle("Dining Information", displayMode: .inline)
        }
    }

    private func openURL(urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}

struct PopularDestinationCard: View {
    var destinationName: String
    var imageName: String
    var reviewsURL: String
    var directionsURL: String
    var addressURL: String

    var body: some View {
        VStack(spacing: 16) {
            Text(destinationName)
                .foregroundColor(.darkGreen)
                .font(.title3)
            Image(imageName)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(10)

            HStack(spacing: 16) {
                Button(action: {
                    openURL(urlString: reviewsURL)
                }) {
                    Text("Reviews")
                        .foregroundColor(.white)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .font(.headline)
                }

                Button(action: {
                    openURL(urlString: directionsURL)
                }) {
                    Text("Directions")
                        .foregroundColor(.white)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .font(.headline)
                }

                Button(action: {
                    openURL(urlString: addressURL)
                }) {
                    Text("Address")
                        .foregroundColor(.white)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .font(.headline)
                }
            }
        }
        .padding()
        .frame(width: 300, height: 360)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)
    }

    private func openURL(urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}

struct DiningView_Previews: PreviewProvider {
    static var previews: some View {
        DiningView()
    }
}

extension Color {
    static let dG = Color(red: 25/255, green: 46/255, blue: 27/255)
    static let lG = Color(red: 106/255, green: 134/255, blue: 107/255)
    static let dGray = Color(red: 73/255, green: 71/255, blue: 71/255)
}
