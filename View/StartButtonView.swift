//
//  StartButtonView.swift
//  Fructus
//
//  Created by Bertuğ Horoz on 21.11.2022.
//

import SwiftUI

struct StartButtonView: View {
    // PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    // BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing : 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
            } // H: STACK
            .imageScale(.large)
            .padding(.horizontal , 16)
            .padding(.vertical , 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } // : BUTTON
        .accentColor(Color.white)
        
    }
}

// PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
