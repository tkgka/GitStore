//
//  AppReducer.swift
//  GitStore
//
//  Created by 김수환 on 2023/04/05.
//

import Foundation
import ComposableArchitecture

let appReducer = AnyReducer<AppState, AppAction, AppEnvironment>.combine(
  rootReducer.pullback(
    state: \.root,
    action: /AppAction.root,
    environment: { _ in
      RootEnvironment()
    }
  )
)
