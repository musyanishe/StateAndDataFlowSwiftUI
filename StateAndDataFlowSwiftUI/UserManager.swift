//
//  UserManager.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Евгения Шевцова on 18.05.2022.
//

import Combine
import Foundation

final class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
