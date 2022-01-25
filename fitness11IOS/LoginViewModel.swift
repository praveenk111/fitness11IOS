//
//  LoginViewModel.swift
//  fitness11IOS
//
//  Created by Manpreet Kaur on 2022-01-24.
//

import Foundation
import Firebase


class LoginViewModel: ObservableObject {
    @Published private var email1: String = ""
    @Published private var password1: String = ""
    @Published var showhomepage = false
    @Published var error: Authentication.AuthenticationError?

    
 
    
    func login(completion: @escaping (Bool) -> Void) {
        showhomepage = true
        Auth.auth().signIn(withEmail: email1, password: password1){ [self] result,err in
            self.showhomepage = false
            switch result {
            case .success:
                completion(true)
            case .failure(let authError):
                credentials = Credentials()
                error = authError
                completion(false)
            }
        }
    }
}
