//
//  StateAndDataFlowSwiftUIApp.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Евгения Шевцова on 18.05.2022.
//

import SwiftUI

@main
struct StateAndDataFlowSwiftUIApp: App {
    private let user = DataManager.shared.registerUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
