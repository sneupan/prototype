//
//  AcademicsView.swift
//  agoraproto
//


import SwiftUI

struct AcademicsView: View {
    @ObservedObject private var viewModel = AcademicsViewViewModel()
    
    @State private var isChecked: [Bool] = Array(repeating: false, count: 10)
    @State private var newElective: String = ""
    @State private var electives: [String] = []

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
                            TabBarButton(destination: HomeView(showSignInView: .constant(false)), imageName: "house.fill", label: "Home")
                            TabBarButton(destination: ResourceView(), imageName: "book.fill", label: "Resource")
                            TabBarButton(destination: AcademicsView(), imageName: "pencil.and.outline", label: "Study")
                            TabBarButton(destination: DiningView(), imageName: "utensils", label: "Dine")
                            TabBarButton(destination: TechnologyView(), imageName: "gear", label: "Tech")
                        }
                        .padding(.horizontal, 16)
                    }

                    VStack(spacing: 16) {
                        CoreRequirementsChecklist(content: viewModel.academicsModel.coreRequirements, isChecked: $isChecked)


                        VStack(spacing: 8) {
                            ForEach(electives, id: \.self) { elective in
                                Text(elective)
                                    .foregroundColor(.white)
                            }

                            HStack {
                                TextField("Add new elective", text: $newElective)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())

                                Button(action: {
                                    if !newElective.isEmpty {
                                        electives.append(newElective)
                                        newElective = ""
                                    }
                                }) {
                                    Text("Add")
                                        .linkStyle()
                                }
                            }
                        }
                        .padding()
                        .background(Color(red: 60/255, green: 60/255, blue: 60/255))
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 4)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 100)
                }
            }
        }
        .navigationBarTitle(Text("Academics"), displayMode: .inline)
        .foregroundColor(.white)
    }
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .foregroundColor(configuration.isOn ? .yellow : .white)
                .font(.title2)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            configuration.label
        }
    }
}

struct CoreRequirementsChecklist: View {
    var content: [String]
    @Binding var isChecked: [Bool]
    
    var body: some View {
        VStack(spacing: 8) {
            ForEach(0..<content.count, id: \.self) { index in
                HStack {
                    Toggle("", isOn: $isChecked[index])
                        .toggleStyle(CheckboxToggleStyle())
                        .frame(width: 24)
                    Text(content[index])
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
        .padding()
        .background(Color(red: 60/255, green: 60/255, blue: 60/255))
        .cornerRadius(20)
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

