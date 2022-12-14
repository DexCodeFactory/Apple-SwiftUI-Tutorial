//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Dexter Kim on 9/20/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
