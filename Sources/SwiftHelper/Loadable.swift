//
//  Loadable.swift
//  
//
//  Created by Ing. Ebu Celik on 26.04.22.
//

import Foundation

public enum Loadable<T>: Equatable where T: Codable, T: Equatable {
    case none
    case loading
    case refreshing
    case error(Error)
    case loaded(T)

    public static func == (lhs: Loadable<T>, rhs: Loadable<T>) -> Bool {
        switch (lhs, rhs) {
        case (.none, .none):
            return true

        case (.loading, .loading):
            return true

        case (.refreshing, .refreshing):
            return true

        case (let .error(lhsError), let .error(rhsError)):
            return lhsError.localizedDescription == rhsError.localizedDescription

        case (let .loaded(lhsLoaded), let .loaded(rhsLoaded)):
            return lhsLoaded == rhsLoaded

        default:
            return false
        }
    }
}
