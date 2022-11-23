//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Bertuğ Horoz on 23.11.2022.
//

import SwiftUI

struct SettingsRowView: View {
    // PROPERTIES
    var name : String
    var content : String? = nil
    var linkLAbel : String? = nil
    var linkDestination : String? = nil
    // BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if(linkLAbel != nil && linkDestination != nil) {
                    Link(linkLAbel! , destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Bertuğ")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Website", linkLAbel:  "Myrastudios" , linkDestination: "myrastudios.co")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
        
    }
}
