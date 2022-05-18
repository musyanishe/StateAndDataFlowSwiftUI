//
//  LogOutButtonView.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Евгения Шевцова on 18.05.2022.
//

import SwiftUI

struct LogOutButtonView: View {
@State private var isPressed = false
    
    var body: some View {
        Button(action: dismiss) {
            Text("Log Out")
                .font(.title)
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.indigo)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 4))
    }
    
    private func dismiss() {
//        if isPressed{
//            RegisterView()
        }
    }


struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView()
    }
}
