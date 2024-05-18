//
//  taskbaitApp.swift
//  taskbait
//
//  Created by Michelle Li on 17/5/2024.
//

import SwiftUI
import FirebaseCore

@main
struct taskbaitApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
