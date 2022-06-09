//
//  FamilyTableView.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/8/22.
//

import DLab
import SwiftUI

struct FamilyTableView: View {
    var stratum: Stratum
    
    var individuals: [Individual] {
        return stratum.allIndividuals
    }
    var locusNames: [String] {
        return stratum.locusNames
    }
    
    var columns: [GridItem] {
        return Array( repeating: GridItem( .flexible( minimum: 50,
                                                      maximum: 125)),
                      count: locusNames.count + 1)
    }
    
    var body: some View {
        
        
        
        
        ScrollView {
            LazyVGrid(columns: columns, content: {
                
                /// Let's do the header row
                Group {
                    Text("OffID")
                        .fixedSize(horizontal: true, vertical: false)
                        .bold()
                    ForEach( locusNames, id: \.self) { locus in
                        Text("\(locus)")
                            .fixedSize(horizontal: true, vertical: false)
                            .bold()
                    }
                }
                
                // Go through the Individuals
                ForEach( individuals, id: \.self) { ind in
                    Text("\(ind.offID)")
                        .fixedSize(horizontal: true, vertical: false)
                        .id( "\(ind.id)-id")
                    ForEach( locusNames, id: \.self) { locus in
                        /* GenotypeRowView(indiviudal: ind,
                                        genotypeName: locus,
                                        reduced: true)
                         */
                        Text("\(ind.loci[locus, default:Genotype()].description)")
                            .fixedSize(horizontal: true, vertical: false)
                            .id( "\(ind.id.uuidString)-\(locus)" )
                        /*
                        Text( "\(ind.loci[locus, default: Genotype() ].description)")
                            .id( "\(ind.id.uuidString)-\(locus)" )
                         */
                    }
                }
                .padding(.vertical,4)

                
            })
            
        }
        
        
        
    }
}

struct FamilyTableView_Previews: PreviewProvider {
    static var previews: some View {
        FamilyTableView(stratum: Stratum.DefaultFamily() )
    }
}
