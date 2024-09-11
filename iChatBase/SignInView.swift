//
//  ContentView.swift
//  iChatBase
//
//  Created by Kaic Cesar on 11/09/24.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .padding(70)
            
            TextField("Entre com seu e-mail", text: $email)
                .padding()
                .border(Color(UIColor.separator))
                
            
            SecureField("Entre com sua senha", text: $password)
                .padding()
                .border(Color(UIColor.separator))
            
            Button {
                print("Clicado")
            } label: {
                Text("Entrar")
            }
            
            Divider()
            
            Button {
                print("Clicado")
            } label: {
                Text("Não tem uma conta? Clique aqui")
            }
                
        }
        .padding()
    }
}

#Preview {
    SignInView()
}
