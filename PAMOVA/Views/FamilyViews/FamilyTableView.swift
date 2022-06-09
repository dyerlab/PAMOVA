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
        return Array( repeating: GridItem( .flexible( minimum: 75,
                                                      maximum: 125)),
                      count: locusNames.count + 1)
    }
    
    var body: some View {
        
        
        
        
        ScrollView([.vertical, .horizontal]) {
            LazyVGrid(columns: columns, spacing: 5, content: {
                
                /// Let's do the header row
                
                Group {
                    Text("Individual")
                        .id("ID-HEADER")
                        .fixedSize(horizontal: true, vertical: false)
                        .bold()
                        .padding()
                    ForEach( locusNames, id: \.self) { locus in
                        Text("\(locus)")
                            .id("\(locus)-HEADER")
                            .fixedSize(horizontal: true, vertical: false)
                            .padding()
                            .bold()
                    }
                }
                 
                
                // Go through the Individuals
                ForEach( individuals, id: \.self) { ind in
                    Text("\(ind.offID)")
                        .fixedSize(horizontal: true, vertical: false)
                        .id( "\(ind.id.uuidString)-OffID")
                        .padding(.horizontal)
                    ForEach( locusNames, id: \.self) { locus in
                        /* GenotypeRowView(indiviudal: ind,
                                        genotypeName: locus,
                                        reduced: true)
                         */
                        Text("\(ind.loci[locus, default:Genotype()].description)")
                            .fixedSize(horizontal: true, vertical: false)
                            .padding(.horizontal)
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
        .padding()
        
    }
}

struct FamilyTableView_Previews: PreviewProvider {
    static var previews: some View {
        FamilyTableView(stratum: Stratum.DefaultFamily() )
    }
}
