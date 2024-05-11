//
//  SwiftUITipKitApp.swift
//  SwiftUITipKit
//
//  Created by Angelos Staboulis on 9/5/24.
//

import SwiftUI
import TipKit
@main
struct SwiftUITipKitApp: App {
    init(){
        try? Tips.resetDatastore()
        try? Tips.configure([
            .displayFrequency(.immediate),
            .datastoreLocation(.applicationDefault),
        ])
    }
    var body: some Scene {
        WindowGroup {
            ContentView(clicked: false)
        }
    }
}
