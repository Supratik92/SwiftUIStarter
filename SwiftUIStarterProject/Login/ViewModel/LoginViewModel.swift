//
//  LoginViewModel.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 28/07/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import Foundation

class LoginViewModel {

    func isValidEmail(_ email: String) -> Bool? {
        guard let regex = try? NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive) else {
            return nil
        }
        return regex.firstMatch(in: email, options: [], range: NSRange(location: 0, length: email.count)) != nil
    }

    func isValidPassword(_ password: String) -> Bool {
         let passcode = password.trimmingCharacters(in: CharacterSet.whitespaces)
         let passwordRegx = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&<>*~:`-]).{8,}$"
         let passwordCheck = NSPredicate(format: "SELF MATCHES %@", passwordRegx)
         return passwordCheck.evaluate(with: passcode)
    }
}
