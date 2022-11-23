//
//  OnboardingView.swift
//  Fructus
//
//  Created by Bertuğ Horoz on 21.11.2022.
//

import SwiftUI

struct OnboardingView: View {
    // PROPERTIES
    var fruits: [Fruit] = fruitsData
    // BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in
                FruitCard(fruit: item)
            } // : LOOP
        } // : TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
// PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
