//
//  Model.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/7/22.
//

import DLab
import MapKit
import Foundation

class Model: ObservableObject {
    
    @Published var families = Set<Stratum>()
    
    var familyID: [String] {
        return self.families.compactMap( { $0.mother?.strata["ID"] } ).sorted()
    }
    
    var region: MKCoordinateRegion {
        var coords = [CLLocationCoordinate2D]()
        families.forEach( { fam in
            coords.append(contentsOf: fam.coordinates )
        })
        return MKCoordinateRegion(center: coords.centroid, span: coords.span )
    }
    
    var locations: [Location] {
        return self.families.compactMap( { $0.mother?.location } )
    }
    
    init() {
        self.families.insert( Stratum.DefaultFamily() )
    }
    
    
    
    
    
    
}




extension Model {
    
    func family(for identifier: String ) -> Stratum? {
        return families.first(where: { $0.mother!.strata["ID",default: ""] == identifier } )
    }
    
}




















