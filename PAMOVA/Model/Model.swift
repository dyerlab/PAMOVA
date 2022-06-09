//
//  Model.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/7/22.
//

import DLab
#if os(iOS)
import UIKit
#endif
import MapKit
import Foundation

class Model: ObservableObject {
    
    @Published var families = Set<Stratum>()
    @Published var species: String = ""
    @Published var image: UIImage?
    
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
        if let img = UIImage(systemName: "tree") {
            self.image = img
        }
    }
    
    
    
    
    
    
    
    
}




extension Model {
    
    func family(for identifier: String ) -> Stratum {
        guard let ret = families.first(where: { $0.mother!.strata["ID",default: ""] == identifier } ) else { return Stratum() }
        return ret 
    }
    
}




















