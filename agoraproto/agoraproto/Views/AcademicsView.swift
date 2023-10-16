//
//  AcademicsView.swift
//  agoraproto
//


import SwiftUI

struct AcademicsView: View {
    @ObservedObject private var viewModel = AcademicsViewViewModel()

    var body: some View {
        ZStack {
            Color.lightGray
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack(spacing: 16) {
                    Text("Academics")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(.leading)

                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 16) {
                            TabBarButton(destination:  HomeView(showSignInView: .constant(false)), imageName: "house.fill", label: "Home")
                            TabBarButton(destination: ResourceView(), imageName: "book.fill", label: "Resource")
                            TabBarButton(destination: AcademicsView(), imageName: "pencil.and.outline", label: "Study")
                            TabBarButton(destination: DiningView(), imageName: "utensils", label: "Dine")
                            TabBarButton(destination: TechnologyView(), imageName: "gear", label: "Tech")
                        }
                        .padding(.horizontal, 16)
                    }

                    VStack(spacing: 16) {
                        SectionCard(title: "Core Requirements", content: viewModel.academicsModel.coreRequirements)

                        SectionCard(title: "Electives", content: viewModel.academicsModel.electives)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 100) // Adjust the bottom padding to create space for scrolling
                }
            }
        }
        .navigationBarTitle(Text("Academics"), displayMode: .inline)
        .foregroundColor(.white)
    }
}

struct SectionCard: View {
    var title: String
    var content: String

    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color(red: 60/255, green: 60/255, blue: 60/255))
            .frame(width: 337, height: 250)
            .overlay(
                VStack(spacing: 8) {
                    Text(title)
                        .font(.title2)
                        .foregroundColor(.yellow)

                    Text(content)
                        .font(.body)
                        .foregroundColor(.white)
                }
                .padding(16)
            )
            .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 4)
    }
}

extension View {
    func linkStyle() -> some View {
        self.foregroundColor(.white)
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
            .background(Color.darkGray)
            .cornerRadius(15)
            .font(.headline)
    }
}

struct AcademicsView_Previews: PreviewProvider {
    static var previews: some View {
        AcademicsView()
    }
}
