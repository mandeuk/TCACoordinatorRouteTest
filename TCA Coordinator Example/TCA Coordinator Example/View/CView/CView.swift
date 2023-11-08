//
//  CView.swift
//  TCA Coordinator Example
//
//  Created by Inho Lee on 11/8/23.
//

import SwiftUI
import ComposableArchitecture

struct CView: View {
    let store: StoreOf<CFeature>
    
    init(store: StoreOf<CFeature>) {
        self.store = store
    }
    
    var body: some View {
        WithViewStore(store, observe: {$0}) { (viewStore: ViewStoreOf<CFeature>) in
            VStack {
                
                Text("CView")
                
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
                    viewStore.send(.pushB)
                }, label: {
                    Text("Push B")
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
                    viewStore.send(.popAllPushB)
                }, label: {
                    Text("Pop All Push B")
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
    CView(store: Store(initialState: CFeature.State.init()) {
        CFeature()
    })
}

