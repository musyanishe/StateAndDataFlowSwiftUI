//
//  RegisterView.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Евгения Шевцова on 18.05.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager 
    @State private var name = ""
    @State private var textValue = ""
    
    var body: some View {
        VStack {
            HStack(spacing: 16){
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                Text("\(name.count)")
                    .foregroundColor(textValueColor)
                    .multilineTextAlignment(.leading)
                    .onChange(of: name){ value in
                        textValue = "\(name.count)"
                        
                    }
                    .padding()
            }
            
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
                .foregroundColor(buttonColor)
            }
        }
    }
    
    private var nameValueIsValid: Bool {
        name.count >= 3 && name.count <= 20
    }
    
    private var buttonColor: Color {
        nameValueIsValid ? .accentColor : .gray
    }
    
    private var textValueColor: Color {
        nameValueIsValid ? .green : .red
    }
    
    
    private func registerUser() {
        if nameValueIsValid {
            user.name = name
            user.isRegister.toggle()
        }
    }
    

    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
