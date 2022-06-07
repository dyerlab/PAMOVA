//
//  AnalysisRow.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/7/22.
//

import SwiftUI

struct AnalysisMenuView: View {
    let analysis: AnalysisType
    
    var body: some View {
        HStack {
            Image(systemName: analysis.imageName)
                .resizable()
                .frame( width:40, height:40)
                .foregroundColor( Color.secondary )
            VStack(alignment: .leading) {
                Text( analysis.name )
                    .font(.headline)
                Text( analysis.subtitle )
                    .font( .subheadline)
            }
            
        }
    }
}

struct AnalysisRow_Previews: PreviewProvider {
    static var previews: some View {
        AnalysisMenuView( analysis:  .map )
        AnalysisMenuView( analysis:  .families )
        AnalysisMenuView( analysis:  .diversity )
        AnalysisMenuView( analysis:  .structure )
        AnalysisMenuView( analysis:  .popgraph )
    }
}
