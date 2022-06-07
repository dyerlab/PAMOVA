//
//  PAMOVAApp.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/7/22.
//

import DLab
import SwiftUI

@main
struct PAMOVAApp: App {
    
    @StateObject private var model = Model.defaultModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject( model )
        }
    }
}
