//
//  ContentView.swift
//  iChatBase
//
//  Created by Kaic Cesar on 11/09/24.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel = SignInViewModel()
    
    var body: some View {
        VStack {
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .padding(70)
                
                TextField("Entre com seu e-mail", text: $viewModel.email)
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled(false)
                    .padding()
                    .border(Color(UIColor.separator))
                    .cornerRadius(24.0)
                    .overlay (
                        RoundedRectangle(cornerRadius: 24.0)
                            .stroke(Color("blueColor"), lineWidth: 2.0)
                    )
                    .padding(.bottom, 20)
                
                
                SecureField("Entre com sua senha", text: $viewModel.password)
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled(false)
                    .padding()
                    .border(Color(UIColor.separator))
                    .cornerRadius(24.0)
                    .overlay (
                        RoundedRectangle(cornerRadius: 24.0)
                            .stroke(Color("blueColor"), lineWidth: 2.0)
                    )
                    .padding(.bottom, 30)
                
                Button {
                    viewModel.singIn()
                } label: {
                    Text("Entrar")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundStyle(.white)
                        .background(Color("blueColor"))
                        .cornerRadius(24.0)
                        .overlay (
                            RoundedRectangle(cornerRadius: 24.0)
                                .strokeBorder(Color(UIColor.separator), lineWidth: 2.0)
                        )
                }
                
                Divider()
                    .padding(30)
                
                Button {
                    print("Clicado 2")
                } label: {
                    Text("Não tem uma conta? Clique aqui")
                }
                
            }
            .padding(.horizontal, 32)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("bgColor"))
    }
}

#Preview {
    SignInView()
}
