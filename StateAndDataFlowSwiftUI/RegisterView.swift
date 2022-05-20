//
//  RegisterView.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Евгения Шевцова on 18.05.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var textValue = ""
    
    private var nameValueIsValid: Bool {
        user.user.name.count >= 3
        && user.user.name.count <= 20
    }
    
    var body: some View {
        VStack {
            HStack(spacing: 16){
                TextField("Enter your name...", text: $user.user.name)
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                Text("\(user.user.name.count)")
                    .foregroundColor(nameValueIsValid ? .green : .red)
                    .multilineTextAlignment(.leading)
                    .onChange(of: user.user.name){ value in
                        textValue = "\(user.user.name.count)"
                        
                    }
                    .padding()
            }
            
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
                .foregroundColor(nameValueIsValid ? .accentColor : .gray)
            }
        }
    }
    
    private func registerUser() {
        if nameValueIsValid {
            user.user.isRegister.toggle()
            DataManager.shared.saveUser(user: user.user)
        }
    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
