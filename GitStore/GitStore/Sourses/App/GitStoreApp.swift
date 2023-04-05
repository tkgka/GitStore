//
//  GitStoreApp.swift
//  GitStore
//
//  Created by 김수환 on 2023/04/05.
//

import SwiftUI
import ComposableArchitecture

@main
struct GitStoreApp: App {
    
    let store = Store(
        initialState: AppState(),
        reducer: appReducer,
        environment: .shared
    )
    
    var body: some Scene {
        WindowGroup {
            RootView(
                store: store.scope(
                    state: \.root,
                    action: AppAction.root
                )
            )
        }
    }
}

