//
//  FruitModel.swift
//  Fructus
//
//  Created by Bertuğ Horoz on 21.11.2022.
//

import SwiftUI

// FRUITS DATA MODEL

struct Fruit : Identifiable {
    var id = UUID()
    var title : String
    var headline : String
    var image : String
    var gradientColors : [Color]
    var description : String
    var nutrition : [String]
}
