//
//  RootComposable.swift
//  GitStore
//
//  Created by 김수환 on 2023/04/05.
//

import Foundation
import ComposableArchitecture

// MARK: - State

struct RootState {
    
}


// MARK: - Action

enum RootAction {
    
}


// MARK: - Enviroment

struct RootEnvironment {
    
}

extension RootEnvironment {
    
    static let preview = RootEnvironment()
}


// MARK: - Reducer


let rootReducer = AnyReducer<RootState, RootAction, RootEnvironment>.combine(
    .init{ state, action, environment in
        switch action {
            
        default:
            return .none
        }
    }
)
