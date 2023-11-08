//
//  RootView.swift
//  TCA Coordinator Example
//
//  Created by Inho Lee on 11/8/23.
//

import SwiftUI
import ComposableArchitecture
import TCACoordinators

struct RootView: View {
    let store: StoreOf<RootFeature>
    
    var body: some View {
        TCARouter(store) { screen in
            SwitchStore(screen) { screen in
                switch screen {
                case .a:
                    CaseLet(
                        /ScreenFeature.State.a,
                         action: ScreenFeature.Action.a,
                         then: AView.init
                    )
                    
                case .b:
                    CaseLet(
                        /ScreenFeature.State.b,
                         action: ScreenFeature.Action.b,
                         then: BView.init
                    )
                    
                case .c:
                    CaseLet(
                        /ScreenFeature.State.c,
                         action: ScreenFeature.Action.c,
                         then: CView.init
                    )
                    
                case .d:
                    CaseLet(
                        /ScreenFeature.State.d,
                         action: ScreenFeature.Action.d,
                         then: DView.init
                    )
                    
                }//end of switch
            }
        }
    }
}
