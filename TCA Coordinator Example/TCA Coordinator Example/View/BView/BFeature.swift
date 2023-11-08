//
//  BFeature.swift
//  TCA Coordinator Example
//
//  Created by Inho Lee on 11/8/23.
//

import SwiftUI
import ComposableArchitecture

struct BFeature: Reducer {
    
    struct State: Equatable {
    }
    
    enum Action {
        case pushA
        case pushC
        case pushD
        case goBack
        case popAllPushA
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


