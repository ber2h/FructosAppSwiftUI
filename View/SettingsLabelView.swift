//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Bertuğ Horoz on 22.11.2022.
//

import SwiftUI

struct SettingsLabelView: View {
    // PROPERTIES
    var labelText : String
    var labelImage : String
    // BODY 
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
 }

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
