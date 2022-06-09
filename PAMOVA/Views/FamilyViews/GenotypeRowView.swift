//
//  GenotypeRowView.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/8/22.
//

import DLab
import SwiftUI

struct GenotypeRowView: View {
    var indiviudal: Individual
    var genotypeName: String
    var reduced: Bool
    var genotype: Genotype {
        return indiviudal.loci[genotypeName, default: Genotype.DefaultNULL()]
    }
    var body: some View {
        HStack(spacing:2){
            Text("\(reduced ? genotype.maskedLeft : genotype.left )")
            Text(":")
            Text("\(reduced ? genotype.maskedRight : genotype.right )")
        }
    }
}

struct GenotypeRowView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            GenotypeRowView(indiviudal: Individual.DefaultOffspring(),
                            genotypeName: "ABC", reduced: false)

            GenotypeRowView(indiviudal: Individual.DefaultOffspring(),
                            genotypeName: "NM", reduced: false)
            
            GenotypeRowView(indiviudal: Individual.DefaultOffspring(),
                            genotypeName: "UN", reduced: false)
            
            GenotypeRowView(indiviudal: Individual.DefaultOffspring(),
                            genotypeName: "ML", reduced: false)
            
            GenotypeRowView(indiviudal: Individual.DefaultOffspring(),
                            genotypeName: "MR", reduced: false)
            
            GenotypeRowView(indiviudal: Individual.DefaultOffspring(),
                            genotypeName: "MD", reduced: false)
        }

        
        Group {
            GenotypeRowView(indiviudal: Individual.DefaultOffspring(),
                            genotypeName: "ABC", reduced: true)

            GenotypeRowView(indiviudal: Individual.DefaultOffspring(),
                            genotypeName: "NM", reduced: true)
            
            GenotypeRowView(indiviudal: Individual.DefaultOffspring(),
                            genotypeName: "UN", reduced: true)
            
            GenotypeRowView(indiviudal: Individual.DefaultOffspring(),
                            genotypeName: "ML", reduced: true)
            
            GenotypeRowView(indiviudal: Individual.DefaultOffspring(),
                            genotypeName: "MR", reduced: true)
            
            GenotypeRowView(indiviudal: Individual.DefaultOffspring(),
                            genotypeName: "MD", reduced: true)
        }
        
        
    }
}
