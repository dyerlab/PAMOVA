//
//  StratumAnnotationView.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/9/22.
//

import SwiftUI

struct StratumAnnotationView: View {
    var title: String
    var subtitle: String
    
    var body: some View {
        HStack {
            Text("🌲")
                .font(.largeTitle)
            VStack {
                Text("\(title)")
                    .font(.headline)
                Text("\(subtitle)")
                    .font(.subheadline)
                    .foregroundColor( .secondary )
            }

        }
        .padding(4)

            
    }
}

struct StratumAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        StratumAnnotationView(title: "Location Name", subtitle: "Descriptive string")
    }
}
