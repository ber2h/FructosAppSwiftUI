//
//  FructusApp.swift
//  Fructus
//
//  Created by Bertuğ Horoz on 21.11.2022.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding")  var isOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding == true {
                OnboardingView()
            } else {
             ContentView()
            }
        }
    }
}
