//
//  DView.swift
//  TCA Coordinator Example
//
//  Created by Inho Lee on 11/8/23.
//

import SwiftUI
import ComposableArchitecture

struct DView: View {
    let store: StoreOf<DFeature>
    
    init(store: StoreOf<DFeature>) {
        self.store = store
    }
    
    var body: some View {
        WithViewStore(store, observe: {$0}) { (viewStore: ViewStoreOf<DFeature>) in
            VStack {
                
                Text("DView")
                
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
                    viewStore.send(.pushC)
                }, label: {
                    Text("Push C")
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
                    viewStore.send(.popAllPushC)
                }, label: {
                    Text("Pop All Push C")
                })
                
            }
        }
        .toolbar(.hidden, for: .navigationBar)
        .task{
            
        }
        
    }
}

#Preview {
    DView(store: Store(initialState: DFeature.State.init()) {
        DFeature()
    })
}

