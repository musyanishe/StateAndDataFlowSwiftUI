//
//  UserManager.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Евгения Шевцова on 18.05.2022.
//

import Combine

final class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
