//
//  DataManager.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Евгения Шевцова on 20.05.2022.
//

import Combine
import Foundation

class DataManager: ObservableObject {
    static let shared = DataManager()
    
    private init() {}
    
    func saveUser(user: User) {
        if let encodeData = try? JSONEncoder().encode(user) {
            UserDefaults.standard.set(encodeData, forKey: "user")
        }
    }
    
    func registerUser() -> User {
        guard
            let user = UserDefaults.standard.data(forKey: "user"),
            let savedUser = try? JSONDecoder().decode(User.self, from: user)
        else { return User() }
        return savedUser
    }
    
}
