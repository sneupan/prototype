//
//  HomeViewViewModel.swift
//  agoraproto
//
//  Created by Saskriti Neupane  on 8/1/23.
//

import SwiftUI
import MapKit


class HomeViewViewModel: ObservableObject {
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 42.335488, longitude: -71.168500), span: MKCoordinateSpan(latitudeDelta: 0.011, longitudeDelta: 0.011))
    @Published var userTrackingMode: MapUserTrackingMode = .follow
    @Published var searchText = ""

    // Array to store annotations/pins on the map
    var annotations: [CustomAnnotation] = [
        CustomAnnotation(title: "Stokes Hall", subtitle: "This is a custom location", coordinate: CLLocationCoordinate2D(latitude: 42.3346, longitude: -71.1712)),
        CustomAnnotation(title: "Fulton", subtitle: "This is another custom location", coordinate: CLLocationCoordinate2D(latitude: 42.3345, longitude: -71.16999)),
        CustomAnnotation(title: "Lyons", subtitle: "This is another custom location", coordinate: CLLocationCoordinate2D(latitude: 42.33498, longitude: -71.17096)),
        CustomAnnotation(title: "Mcguinn", subtitle: "This is another custom location", coordinate: CLLocationCoordinate2D(latitude: 42.33375, longitude: -71.16973)),
        CustomAnnotation(title: "Plex", subtitle: "This is another custom location", coordinate: CLLocationCoordinate2D(latitude: 42.33716, longitude: -71.16479)),
        CustomAnnotation(title: "Conte", subtitle: "This is another custom location", coordinate: CLLocationCoordinate2D(latitude: 42.33516, longitude: -71.16766)),
        CustomAnnotation(title: "Merkert", subtitle: "This is another custom location", coordinate: CLLocationCoordinate2D(latitude: 42.3338, longitude: -71.16723)),
        CustomAnnotation(title: "Merkert", subtitle: "This is another custom location", coordinate: CLLocationCoordinate2D(latitude: 42.33504, longitude: -71.16875)),
        CustomAnnotation(title: "Schiller", subtitle: "This is another custom location", coordinate: CLLocationCoordinate2D(latitude: 42.33434, longitude: -71.16908))
    ]

    func handleAnnotationTap(_ annotation: CustomAnnotation) {
        // Zoom into the tapped annotation location
        let span = MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        region = MKCoordinateRegion(center: annotation.coordinate, span: span)
    }
    
    func handleSearch(onSearch: @escaping () -> Void) {
        switch searchText.lowercased() {
        case "resource":
            onSearch()
        case "study":
            onSearch()
        case "dine":
            onSearch()
        case "tech":
            onSearch()
        default:
            searchText = ""
        }
    }
}

