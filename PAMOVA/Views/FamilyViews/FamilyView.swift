//
//  FamilyView.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/7/22.
//

import SwiftUI

struct FamilyView: View {
    
    @EnvironmentObject var model: Model
    
    var familyNames: [String] {
        return model.familyID.sorted()
    }
    @State private var current: Int = 0
    
    var body: some View {
        VStack{
            
            // Heading part
            HStack{
                
                Button(action: {
                    current = current != 0 ? current - 1 : familyNames.count - 1
                }, label: {
                    Image(systemName: "arrow.left.square")
                        .font(.largeTitle)
                })
                .keyboardShortcut( KeyEquivalent.leftArrow,
                                   modifiers: [])
                Spacer()
                Text("\(familyNames[ current ])")
                    .font(.largeTitle)
                Spacer()
                Button(action: {
                    current = current < familyNames.count-1 ? current + 1 : 0
                }, label: {
                    Image(systemName: "arrow.right.square")
                        .font(.largeTitle)
                })
                .keyboardShortcut( KeyEquivalent.leftArrow,
                                   modifiers: [])
            }
            
            FamilyTableView(stratum: model.family(for: familyNames[current]))
                
            
        }
    }
}

struct FamilyView_Previews: PreviewProvider {
    static var previews: some View {
        FamilyView()
            .environmentObject( Model.defaultModel() )
    }
}
