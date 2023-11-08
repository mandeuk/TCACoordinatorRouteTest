//
//  ScreenFeature.swift
//  TCA Coordinator Example
//
//  Created by Inho Lee on 11/8/23.
//

import ComposableArchitecture

struct ScreenFeature: Reducer {
    enum State: Equatable {
        case a(AFeature.State)
        case b(BFeature.State)
        case c(CFeature.State)
        case d(DFeature.State)
    }
    
    enum Action {
        case a(AFeature.Action)
        case b(BFeature.Action)
        case c(CFeature.Action)
        case d(DFeature.Action)
    }
    
    var body: some ReducerOf<Self> {
        Scope(state: /State.a, action: /Action.a) {
            AFeature()
        }
        Scope(state: /State.b, action: /Action.b) {
            BFeature()
        }
        Scope(state: /State.c, action: /Action.c) {
            CFeature()
        }
        Scope(state: /State.d, action: /Action.d) {
            DFeature()
        }
    }
}

