//
//  FamilyMapView.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/7/22.
//

import MapKit
import SwiftUI

struct MapView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: .constant(model.region), annotationItems: model.locations) { location in
                MapMarker(coordinate: location.coordinate )
            }
            .ignoresSafeArea()

            HStack {
                Spacer()
                VStack{
                    Spacer()
                    Text(String("\(model.families.count) families"))
                        .bold()
                }
            }
        }
    }
}

struct FamilyMapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .environmentObject( Model.defaultModel() )
    }
}
