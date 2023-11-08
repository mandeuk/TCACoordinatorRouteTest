//
//  BView.swift
//  TCA Coordinator Example
//
//  Created by Inho Lee on 11/8/23.
//

import SwiftUI
import ComposableArchitecture

struct BView: View {
    let store: StoreOf<BFeature>
    
    init(store: StoreOf<BFeature>) {
        self.store = store
    }
    
    var body: some View {
        WithViewStore(store, observe: {$0}) { (viewStore: ViewStoreOf<BFeature>) in
            VStack {
                
                Text("BView")
                
                Button(action: {
                    viewStore.send(.goBack)
                }, label: {
                    Text("Pop")
                })
                Button(action: {
                    viewStore.send(.pushA)
                }, label: {
                    Text("Push A")
                })
                Button(action: {
                    viewStore.send(.pushC)
                }, label: {
                    Text("Push C")
                })
                Button(action: {
                    viewStore.send(.pushD)
                }, label: {
                    Text("Push D")
                })
                Button(action: {
                    viewStore.send(.popAllPushA)
                }, label: {
                    Text("Pop All Push A")
                })
                Button(action: {
                    viewStore.send(.popAllPushC)
                }, label: {
                    Text("Pop All Push C")
                })
                Button(action: {
                    viewStore.send(.popAllPushD)
                }, label: {
                    Text("Pop All Push D")
                })
            }
        }
        .toolbar(.hidden, for: .navigationBar)
        .task{
            
        }
        
    }
}

#Preview {
    BView(store: Store(initialState: BFeature.State.init()) {
        BFeature()
    })
}

