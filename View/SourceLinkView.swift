//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Bertuğ Horoz on 22.11.2022.
//

import SwiftUI

struct SourceLinkView: View {
    // PROPERTIES
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination:  URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            } // : HSTACK
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
