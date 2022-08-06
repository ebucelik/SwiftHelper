//
//  String.swift
//  
//
//  Created by Ing. Ebu Celik on 21.04.22.
//

import Foundation

extension String {
    public func checkEmailValidation() -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)

        return emailPredicate.evaluate(with: self)
    }
}
