//
//  ContentView.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/7/22.
//

import SwiftUI

struct ContentView: View {
    fileprivate var analyses: [AnalysisType] = [.map, .families, .diversity, .structure, .popgraph]
    
    var body: some View {
        
        
        
        NavigationView{
            List {
                NavigationLink(destination: { MapView() }, label: { AnalysisMenuView(analysis: .map )})
                NavigationLink(destination: { FamilyView() }, label: { AnalysisMenuView(analysis: .families )})
                NavigationLink(destination: { DiversityView() }, label: { AnalysisMenuView(analysis: .diversity )})
                NavigationLink(destination: { StrucureView() }, label: { AnalysisMenuView(analysis: .structure )})
                NavigationLink(destination: { PopgraphView() }, label: { AnalysisMenuView(analysis: .popgraph )})
                
            }
            Text("PAMOVA")
                .font(.largeTitle)
                .bold()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
