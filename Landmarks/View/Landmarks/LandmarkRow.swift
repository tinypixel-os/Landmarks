//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Himanshu Singh on 24/06/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            HStack {
                landmark.image
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(.white, lineWidth: 2))
                    .shadow(radius: 7)
                Text(landmark.name)
                Text(landmark.state)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                if landmark.isFavorite {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
            }
            .padding(.top, 4)
            .padding(.bottom, 4)
            .padding(.leading, 20)
        }
    }
}


#Preview("Grouped list") {
    Group {
        LandmarkRow(landmark: ModelData().landmarks[0])
        LandmarkRow(landmark: ModelData().landmarks[1])
        LandmarkRow(landmark: ModelData().landmarks[2])
    }
}
