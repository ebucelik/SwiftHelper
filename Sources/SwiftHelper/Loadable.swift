//
//  Loadable.swift
//  
//
//  Created by Ing. Ebu Celik on 26.04.22.
//

import Foundation

public enum Loadable<Item>: Equatable where Item: Codable, Item: Equatable {
    case none
    case loading
    case refreshing
    case error(APIError)
    case loaded(Item)
}
