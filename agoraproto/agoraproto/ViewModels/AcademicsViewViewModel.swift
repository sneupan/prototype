//
//  AcademicsViewViewModel.swift
//  agoraproto
//
//  Created by Saskriti Neupane  on 7/23/23.
//


// ViewModel for the AcademicsView

import SwiftUI

struct AcademicsModel {
    var coreRequirements: [String]
    var electives: String
}

class AcademicsViewViewModel: ObservableObject {
    @Published var academicsModel: AcademicsModel

    init() {
        // Split the multi-line string into an array of strings so the checklist works in AcademicsView
        let coreCourses = """
        1 Course in Arts
        1 Course in Cultural Diversity
        2 Courses in History
        1 Course in Literature
        1 Course in Mathematics
        2 Courses in Natural Science
        2 Courses in Philosophy
        2 Courses in Social Sciences
        2 Courses in Theology
        1 Course in Writing
        """.split(separator: "\n").map(String.init)

        // Initialize the ViewModel
        academicsModel = AcademicsModel(
            coreRequirements: coreCourses,
            electives: """
            List of elective courses goes here.
            You can customize this section with your content.
            """
        )
    }
}
