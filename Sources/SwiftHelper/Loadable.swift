//
//  Loadable.swift
//  
//
//  Created by Ing. Ebu Celik on 26.04.22.
//

import Foundation

public enum Loadable<Item, Failure>: Equatable where Item: Codable, Item: Equatable, Failure: Error, Failure: Equatable {
    case none
    case loading
    case refreshing
    case error(Failure)
    case loaded(Item)
}
