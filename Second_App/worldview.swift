//
//  worldview.swift
//  Second_App
//
//  Created by Yasmin Ho on 2023/05/31.
//

import MapKit
import SwiftUI

struct worldview: View {
    @EnvironmentObject var locations: Locations
    @State var region=MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -26.195246, longitude: 28.034088),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
        
        
        )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places) {
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude))
            {
                NavigationLink(destination: ContentView(location: location)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(15)
                        .frame(width: 80, height:45)
                        .shadow(radius:4)
                }
            }
    }
            .navigationTitle("Locations")
    }
}

struct worldview_Previews: PreviewProvider {
    static var previews: some View {
        worldview()
    }
}

