//
//  AView.swift
//  TCA Coordinator Example
//
//  Created by Inho Lee on 11/8/23.
//

import SwiftUI
import ComposableArchitecture

struct AView: View {
    let store: StoreOf<AFeature>
    
    init(store: StoreOf<AFeature>) {
        self.store = store
    }
    
    var body: some View {
        WithViewStore(store, observe: {$0}) { (viewStore: ViewStoreOf<AFeature>) in
            VStack {
                
                Text("AView")
                
                Button(action: {
                    viewStore.send(.goBack)
                }, label: {
                    Text("Pop")
                })
                Button(action: {
                    viewStore.send(.pushB)
                }, label: {
                    Text("Push B")
                })
                Button(action: {
                    viewStore.send(.pushC)
                }, label: {
                    Text("Push D")
                })
                Button(action: {
                    viewStore.send(.pushD)
                }, label: {
                    Text("Push C")
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
    AView(store: Store(initialState: AFeature.State.init()) {
        AFeature()
    })
}
