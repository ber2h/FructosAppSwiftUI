//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Bertuğ Horoz on 22.11.2022.
//

import SwiftUI

struct FruitDetailView: View {
    // PROPERTIES
    var fruit : Fruit
    // BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // NUTRIENTS
                        FruitNutientsView(fruit: fruit)
                        // SUBHEADLINE
                        Text("Learn more abaout \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                    } // : VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment:  .center)
                } // : VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } // : SCROLL
            .edgesIgnoringSafeArea(.top)
        } // : NAVIGATION
    }
}

// PREWIEV
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
