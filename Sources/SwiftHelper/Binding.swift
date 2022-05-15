//
//  Binding.swift
//  
//
//  Created by Ing. Ebu Celik on 15.05.22.
//

import SwiftUI

public extension Binding {
     func toUnwrapped<T>(defaultValue: T) -> Binding<T> where Value == Optional<T>  {
        Binding<T>(
            get: {
                self.wrappedValue ?? defaultValue
            },
            set: {
                self.wrappedValue = $0
            }
        )
    }
}
