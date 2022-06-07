//
//  AnalysisType.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/7/22.
//

import Foundation

enum AnalysisType: String, Identifiable, CaseIterable, Hashable {
    case map = "Map"
    case families = "Families"
    case diversity = "Diversity"
    case structure = "Structure"
    case popgraph = "Popgraph"
    
    var name: String {
        rawValue
    }
    
    var id: String {
        rawValue
    }
    
    var subtitle: String {
        switch self {
        case .map:
            return "Location of all families"
        case .families:
            return "Genotypes of each family"
        case .diversity:
            return "Pollen pool diversity"
        case .structure:
            return "Pollen pool structure"
        case .popgraph:
            return "Pollen connectivity graph"
        }
    }
    
    var imageName: String {
        switch self {
        case .map:
            return "map"
        case .families:
            return "leaf.circle"
        case .diversity:
            return "circle.grid.cross.right.filled"
        case .structure:
            return "squareshape.dashed.squareshape"
        case .popgraph:
            return "scale.3d"
        }
    }
}
