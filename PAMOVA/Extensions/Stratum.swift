//
//  Stratum.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/8/22.
//

import DLab
import Foundation

extension Stratum {
    
    public var allIndividuals: [Individual] {
        var ret = [Individual]()
        if let mom = self.mother {
            ret.append( mom )
        }
        ret.append(contentsOf: self.individuals )
        return ret
    }
    
    public var locusNames: [String] {
        if let mom = self.mother {
            return mom.loci.keys.sorted()
        }
        else {
            return [String]()
        }
    }
    
}
