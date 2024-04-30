//
//  ContentView.swift
//  Learning_Frontend
//
//  Created by Grace on 30/4/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow

    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShown = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    @State private var isPlanetViewOpen: Bool = false

    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)
                        
            Text("Hello Human!")
            
//            if isButtonPressed {
//                // Display another view when the button is pressed
//                EarthView()
//            } else {
//                // Display the button
//                Button("Show Planet Earth") {
//                    // Set the state variable to true when the button is pressed
//                    self.isButtonPressed = true
//                }
//            }
            
            Button("Show Planet Earth") {
                isPlanetViewOpen.toggle()
            }
            .font(.title)
        }
        .padding()
        .onChange(of: isPlanetViewOpen) { _, newValue in
            Task {
                if newValue {
                    openWindow(id: "EarthWindow")
                } else {
                    dismissWindow(id: "EarthWindow")
                }
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
