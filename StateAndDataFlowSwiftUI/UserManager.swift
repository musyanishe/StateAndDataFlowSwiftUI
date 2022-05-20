//
//  UserManager.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Евгения Шевцова on 18.05.2022.
//

import Combine
import Foundation

final class UserManager: ObservableObject {
    @Published var user = User()
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var name = ""
    var isRegister = false
}
