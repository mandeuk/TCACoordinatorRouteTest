//
//  TCA_Coordinator_ExampleApp.swift
//  TCA Coordinator Example
//
//  Created by Inho Lee on 11/8/23.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCA_Coordinator_ExampleApp: App {
    var body: some Scene {
        WindowGroup {
            RootView(store: Store(initialState: .init()){
                RootFeature()
            })
        }
    }
}
