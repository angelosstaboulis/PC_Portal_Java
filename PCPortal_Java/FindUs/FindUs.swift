//
//  FindUs.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 17/5/22.
//

import SwiftUI
import MapKit
struct AnnotatedItem:Identifiable{
    let id = UUID()
    var label : String
    var coordinate:CLLocationCoordinate2D
}
struct FindUs: View {
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.116581, longitude: 25.401810), span: MKCoordinateSpan(latitudeDelta:0.005, longitudeDelta: 0.005))
    @State var points = [AnnotatedItem(label: "PC-Portal", coordinate:  CLLocationCoordinate2D(latitude: 41.116581, longitude: 25.401810))]

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: points) { item in
            MapMarker(coordinate: CLLocationCoordinate2D(latitude: 41.116581, longitude: 25.401810), tint: .green)
        }.edgesIgnoringSafeArea(.all).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 150, alignment: .leading)
    }
    
}

struct FindUs_Previews: PreviewProvider {
    static var previews: some View {
        FindUs()
    }
}
