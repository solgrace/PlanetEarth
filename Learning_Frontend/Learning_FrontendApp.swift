//
//  Learning_FrontendApp.swift
//  Learning_Frontend
//
//  Created by Grace on 30/4/2024.
//

import SwiftUI

@main
struct Learning_FrontendApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
        
        
        
        WindowGroup(id: "EarthWindow") {
            EarthView()
        }
        .windowStyle(.plain)
    }
}
