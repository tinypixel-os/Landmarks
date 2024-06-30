//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Himanshu Singh on 24/06/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
//    it initializes state in an app only once during the lifetime of the app.
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
