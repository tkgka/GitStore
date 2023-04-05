//
//  AppState.swift
//  GitStore
//
//  Created by 김수환 on 2023/04/05.
//

import Foundation

// MARK: - State

struct AppState {
  var root = RootState()
}


// MARK: - Action

enum AppAction {
  case root(RootAction)
    
}


// MARK: - Enviroment

struct AppEnvironment {
    let isFirstLaunch: Bool
    
    static let shared = AppEnvironment()
    
    private init() {
        isFirstLaunch = false
    }
}
