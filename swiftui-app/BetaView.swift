//
//  BetaView.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/02/29
//  
//

import SwiftUI

struct BetaView: View {
    @State private var link: URL?
    
    var body: some View {
        Button(
            action: {
                link = URL(string: "https://github.com/Se1getsu")
            },
            label: {
                Text("Safariを開く")
                    .padding()
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(Capsule())
            }
        )
        .sheet(safari: $link)
    }
}

#Preview {
    BetaView()
}
