//
//  DFeature.swift
//  TCA Coordinator Example
//
//  Created by Inho Lee on 11/8/23.
//

import SwiftUI
import ComposableArchitecture

struct DFeature: Reducer {
    
    struct State: Equatable {
    }
    
    enum Action {
        case pushA
        case pushB
        case pushC
        case goBack
        case popAllPushA
        case popAllPushB
        case popAllPushC
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


