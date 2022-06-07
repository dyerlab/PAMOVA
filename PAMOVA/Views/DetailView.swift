//
//  DetailView.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/7/22.
//

import SwiftUI

struct DetailView: View {
    let type: AnalysisType?
    
    var body: some View {
        switch type {
        case .map:
            MapView()
        case .families:
            FamilyView()
        case .diversity:
            DiversityView()
        case .structure:
            StrucureView()
        case .popgraph:
            PopgraphView()
        default:
            Text("PAMOVA")
                .font(.largeTitle)
                .bold()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(type: .map )
    }
}
