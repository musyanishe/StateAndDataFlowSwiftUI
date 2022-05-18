//
//  StateAndDataFlowSwiftUIApp.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Евгения Шевцова on 18.05.2022.
//

import SwiftUI

@main
struct StateAndDataFlowSwiftUIApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
