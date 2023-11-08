//
//  RootFeature.swift
//  TCA Coordinator Example
//
//  Created by Inho Lee on 11/8/23.
//

import SwiftUI
import ComposableArchitecture
import TCACoordinators

struct RootFeature: Reducer {
    struct State: Equatable, IndexedRouterState {
        var routes: [Route<ScreenFeature.State>]
        
        public init(routes: [Route<ScreenFeature.State>] = [.root(.a(.init()), embedInNavigationView: true)]) {
            self.routes = routes
        }
    }
    
    enum Action: IndexedRouterAction {
        case routeAction(Int, action: ScreenFeature.Action)
        case updateRoutes([Route<ScreenFeature.State>])
    }
    
    public struct RootEnvironment {
    }
    
    var body: some ReducerOf<Self> {
        
        Reduce<State, Action> { state, action in
            switch action {
                // AView
            case .routeAction(_, .a(.goBack)):
                if (state.routes.count > 1) {
                    state.routes.goBack()
                }
                break
            case .routeAction(_, .a(.pushB)):
                state.routes.push(.b(.init()))
                break
            case .routeAction(_, .a(.pushC)):
                state.routes.push(.c(.init()))
                break
            case .routeAction(_, .a(.pushD)):
                state.routes.push(.d(.init()))
                break
            case .routeAction(_, .a(.popAllPushB)):
                state.routes.removeAll()
                state.routes = [.root(.b(.init()), embedInNavigationView: true)]
                break
            case .routeAction(_, .a(.popAllPushC)):
                state.routes.removeAll()
                state.routes = [.root(.c(.init()), embedInNavigationView: true)]
                break
            case .routeAction(_, .a(.popAllPushD)):
                state.routes.removeAll()
                state.routes = [.root(.d(.init()), embedInNavigationView: true)]
                break
                
                
                //BView
            case .routeAction(_, .b(.goBack)):
                if (state.routes.count > 1) {
                    state.routes.goBack()
                }
                break
            case .routeAction(_, .b(.pushA)):
                state.routes.push(.a(.init()))
                break
            case .routeAction(_, .b(.pushC)):
                state.routes.push(.c(.init()))
                break
            case .routeAction(_, .b(.pushD)):
                state.routes.push(.d(.init()))
                break
            case .routeAction(_, .b(.popAllPushA)):
                state.routes.removeAll()
                state.routes = [.root(.a(.init()), embedInNavigationView: true)]
                break
            case .routeAction(_, .b(.popAllPushC)):
                state.routes.removeAll()
                state.routes = [.root(.c(.init()), embedInNavigationView: true)]
                break
            case .routeAction(_, .b(.popAllPushD)):
                state.routes.removeAll()
                state.routes = [.root(.d(.init()), embedInNavigationView: true)]
                break
                
                
                //CView
            case .routeAction(_, .c(.goBack)):
                if (state.routes.count > 1) {
                    state.routes.goBack()
                }
                break
            case .routeAction(_, .c(.pushA)):
                state.routes.push(.a(.init()))
                break
            case .routeAction(_, .c(.pushB)):
                state.routes.push(.b(.init()))
                break
            case .routeAction(_, .c(.pushD)):
                state.routes.push(.d(.init()))
                break
            case .routeAction(_, .c(.popAllPushA)):
                state.routes.removeAll()
                state.routes = [.root(.a(.init()), embedInNavigationView: true)]
                break
            case .routeAction(_, .c(.popAllPushB)):
                state.routes.removeAll()
                state.routes = [.root(.b(.init()), embedInNavigationView: true)]
                break
            case .routeAction(_, .c(.popAllPushD)):
                state.routes.removeAll()
                state.routes = [.root(.d(.init()), embedInNavigationView: true)]
                break
                
                
                //DView
            case .routeAction(_, .d(.goBack)):
                if (state.routes.count > 1) {
                    state.routes.goBack()
                }
                break
            case .routeAction(_, .d(.pushA)):
                state.routes.push(.a(.init()))
                break
            case .routeAction(_, .d(.pushB)):
                state.routes.push(.b(.init()))
                break
            case .routeAction(_, .d(.pushC)):
                state.routes.push(.c(.init()))
                break
            case .routeAction(_, .d(.popAllPushA)):
                state.routes.removeAll()
                state.routes = [.root(.a(.init()), embedInNavigationView: true)]
                break
            case .routeAction(_, .d(.popAllPushB)):
                state.routes.removeAll()
                state.routes = [.root(.b(.init()), embedInNavigationView: true)]
                break
            case .routeAction(_, .d(.popAllPushC)):
                state.routes.removeAll()
                state.routes = [.root(.c(.init()), embedInNavigationView: true)]
                break
            
            default:
                break
            }
            return .none
        }.forEachRoute {
            ScreenFeature()
        }
    }
}


