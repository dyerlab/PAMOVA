//
//  Individual.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/8/22.
//

import DLab
import Foundation

/**
 Extensions for the Individual classs to make the table work a bit better to be able to call by value.
 */
extension Individual {
    
    public var momID: String {
        return self.strata["ID", default: ""]
    }
    public var offID: String {
        return self.strata["OffID", default: ""]
    }

}



