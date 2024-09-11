//
//  SignInViewModel.swift
//  iChatBase
//
//  Created by Kaic Cesar on 11/09/24.
//

import SwiftUI

class SignInViewModel: ObservableObject {
    var email = ""
    var password = ""
    
    func singIn() {
        print("email: \(email), senha: \(password)")
    }
}
