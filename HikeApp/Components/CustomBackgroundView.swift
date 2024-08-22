//
//  CustomBackgroundView.swift
//  HikeApp
//
//  Created by Alice’z Poy on 2024-08-21.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            //MARK: 3. Depth, layer 1 the shadow
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
                //We can't swap between cornerRadius and offset, it will not work...
            /**
             1.    Understand the Modifier’s Effect: Each modifier acts on the view it’s applied to, transforming it in some way. Understanding what each modifier does helps you know what to expect.
                 •    Geometry Modifiers: Modifiers that change the position or size of a view (e.g., .offset, .frame, .padding) should generally be applied before visual modifiers like .cornerRadius or .shadow.
                 •    Visual Modifiers: Modifiers that affect the appearance of a view (e.g., .background, .foregroundColor, .opacity, .cornerRadius) should typically come after you’ve adjusted the layout.
            2.    Think About the “Chain” of Modifiers: The order you apply modifiers is like a chain—each link (modifier) affects the view produced by the previous link. For example:
                 •    Applying .frame first constrains the size of the view, then applying .cornerRadius rounds the corners within that frame.
                 •    If you apply .shadow before .offset, the shadow will move with the view; if you apply .shadow after .offset, the shadow will stay where the view originally was.
             */
            
            //MARK: 2. Light, layer 2 the blend
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            //MARK: 1. Surface, layer 3 the top
            LinearGradient(
                colors: [
                    Color.customGreenLight,
                    Color.customGreenMedium
                ],
                startPoint: .top,
                endPoint: .bottom
            ).cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding() //default padding system-calculated auto depends on devices
}
