//
//  ResourceView.swift
//  agoraproto
//
//  Created by Saskriti Neupane  on 7/23/23.
//

import Foundation
import SwiftUI

class ResourceViewModel: ObservableObject {
    func openURL(urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}
