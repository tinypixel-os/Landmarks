//
//  ContentView.swift
//  Landmarks
//
//  Created by Himanshu Singh on 24/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
