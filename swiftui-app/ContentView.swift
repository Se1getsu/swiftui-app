//
//  ContentView.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/02/29
//  
//

import SwiftUI

struct ContentView: View {
    @State var text = "こんにちは"
    
    var body: some View {
        VStack {
            Text(text)
                .padding()
            Button("ボタン") {
                text = "こんばんは"
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
