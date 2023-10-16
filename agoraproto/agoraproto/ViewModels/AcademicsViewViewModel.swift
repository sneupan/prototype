//
//  AcademicsViewViewModel.swift
//  agoraproto
//
//  Created by Saskriti Neupane  on 7/23/23.
//


// ViewModel for the AcademicsView

import SwiftUI

class AcademicsViewViewModel: ObservableObject {
    @Published var academicsModel: AcademicsViewModel

    init() {
        // Initialize the ViewModel 
        academicsModel = AcademicsViewModel(
            coreRequirements: """
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
            """,
            electives: """
            List of elective courses goes here.
            You can customize this section with your content.
            """
        )
    }
}
