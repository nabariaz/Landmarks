//
//  PlacesApp.swift
//  Landmarks
//
//  Created by Naba Riaz on 9/19/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
