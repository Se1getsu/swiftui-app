//
//  ContentView.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/02/29
//  
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            AlphaView()
                .tabItem {
                    Label("アルファ", systemImage: "app")
                }
            BetaView()
                .tabItem {
                    Label("ベータ", systemImage: "app")
                }
            PushTransitView()
                .tabItem {
                    Label("プッシュ遷移", systemImage: "arrow.left.arrow.right.square")
                }
        }
    }
}

#Preview {
    ContentView()
}
