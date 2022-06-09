//
//  SpeciesView.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/7/22.
//

import SwiftUI

struct SpeciesView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack(alignment: .center) {
            if let img = model.image {
                Image( uiImage: img )
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle())
                    .shadow(radius: 10.0)
            } else {
                Image( systemName: "tree" )
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle())
                    .shadow(radius: 10.0)
            }
            Text("\(model.species)")
                .font(.title)
                .italic()
        }
        .frame(maxWidth: 250)
    }
}

struct SpeciesView_Previews: PreviewProvider {
    static var previews: some View {
        SpeciesView()
            .environmentObject( Model.defaultModel() )
    }
}
