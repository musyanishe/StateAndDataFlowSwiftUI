//
//  ContentView.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Евгения Шевцова on 18.05.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()

    var body: some View {
        VStack {
            Text("Нi, \(user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            
            StartButtonView(timer: timer)
            Spacer()
            
            LogOutButtonView()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

