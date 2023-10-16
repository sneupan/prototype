//
//  HomeView.swift
//  agoraproto
//
//  Created by Saskriti Neupane  on 7/31/23.
//

import SwiftUI
import MapKit

struct HomeView: View {
    @StateObject private var viewModel = HomeViewViewModel()
    @Binding var showSignInView: Bool
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                SearchBar(text: $viewModel.searchText, onSearch: { viewModel.handleSearch { } })
                    .padding(.horizontal)
                    .padding(.top, 50)
                    .padding(.bottom, 5)
                
                ZStack {
                    Map(coordinateRegion: $viewModel.region, interactionModes: .all, showsUserLocation: true, userTrackingMode: $viewModel.userTrackingMode, annotationItems: viewModel.annotations) { annotation in
                        MapAnnotation(coordinate: annotation.coordinate) {
                            // the appearance of the annotation view
                            Image(systemName: "mappin.circle.fill")
                                .foregroundColor(.red)
                                .font(.title)
                                .onTapGesture {
                                    viewModel.handleAnnotationTap(annotation)
                                }
                        }
                    }
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .padding(.horizontal)
                    .frame(maxHeight: 550)
                    .shadow(radius: 8)
                }
                .padding(.bottom, 5)

                   Spacer()

                   HStack {
                       Spacer()

                       TabBarButton(destination: HomeView(showSignInView: .constant(false)), imageName: "house.fill", label: "Home")
                       TabBarButton(destination: ResourceView(), imageName: "book.fill", label: "Resource")
                       TabBarButton(destination: AcademicsView(), imageName: "pencil.and.outline", label: "Study")
                       TabBarButton(destination: DiningView(), imageName: "utensils", label: "Dine")
                       TabBarButton(destination: TechnologyView(), imageName: "gear", label: "Tech")

                       Spacer()
                   }
                   .padding(.bottom, 0)
                   .background(Color.darkGray)
               }
               .background(Color.lightGray.edgesIgnoringSafeArea(.all))
           }
       }
   }

// MARK: - SearchBar

struct SearchBar: View {
    @Binding var text: String
    var onSearch: () -> Void

    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(12)
                .background(Color(UIColor.systemGray5))
                .cornerRadius(8)
                .padding(.horizontal, 16)

            Button(action: {
                onSearch()
            }) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding(12)
                    .background(Color(UIColor.systemGray5))
                    .clipShape(Circle())
            }
        }
        .background(Color.lightGray.edgesIgnoringSafeArea(.all))

    }
}

// MARK: - ContentView_Previews

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showSignInView: .constant(false))
    }
}

// MARK: - CustomAnnotation

struct CustomAnnotation: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let coordinate: CLLocationCoordinate2D
}

// MARK: - Color Extensions

extension Color {
    static let darkGreen = Color(red: 25/255, green: 46/255, blue: 27/255)
    static let lightGreen = Color(red: 106/255, green: 134/255, blue: 107/255)
    static let darkGray = Color(red: 73/255, green: 71/255, blue: 71/255)
    static let lightGray = Color(red: 86/255, green: 86/255, blue: 86/255)
    static let icon = Color(red: 166/255, green: 163/255, blue: 158/255)
    static let blu = Color(red: 0, green: 51/255, blue: 102/255)
}

// MARK: - TabBarButton

struct TabBarButton<Destination: View>: View {
    let destination: Destination
    let imageName: String
    let label: String

    var body: some View {
        NavigationLink(destination: destination) {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.darkGray)
                    .cornerRadius(15)

                Text(label)
                    .foregroundColor(.white)
                    .font(.caption)
            }
            .padding(.horizontal, 11)
        }
        .buttonStyle(PlainButtonStyle())
    }
}
