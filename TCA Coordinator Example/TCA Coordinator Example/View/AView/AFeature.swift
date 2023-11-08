//
//  AFeature.swift
//  TCA Coordinator Example
//
//  Created by Inho Lee on 11/8/23.
//

import SwiftUI
import ComposableArchitecture

struct AFeature: Reducer {
    
    struct State: Equatable {
    }
    
    enum Action {
        case pushB
        case pushC
        case pushD
        case goBack
        case popAllPushB
        case popAllPushC
        case popAllPushD
    }
    
    var body: some ReducerOf<Self>{
        Reduce<State, Action> { state, action in
            switch action {
                
            default:
                break
            }
            return .none
        }
    }
}

