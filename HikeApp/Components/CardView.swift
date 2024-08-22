//
//  CardView.swift
//  HikeApp
//
//  Created by Alice’z Poy on 2024-08-21.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - CARD
        ZStack { // CARD OPEN
            //Layer 1
            CustomBackgroundView()


            //Layer 2
            ZStack { //what is zstack??
                
                // layer 1
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color("ColorIndigoMedium"),
                                Color("ColorSalmonLight")
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    //.frame is make this view inside invisible frame and size it
                    .frame(width: 256, height: 256)
                
                // layer 2 , top of layer 1
                Image("image-1")
                    .resizable()
                    .scaledToFit()
            }
        } //: CARD CLOSE
        .frame(width: 320, height: 570)
        
    }
}

#Preview {
    CardView()
}
