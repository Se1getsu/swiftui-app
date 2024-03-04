//
//  SplitTransitView.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/03/04
//  
//

import SwiftUI

struct SplitTransitView: View {
    var body: some View {
        NavigationSplitView {
            List {
                NavigationLink("Red") { Destination2View(color: .red) }
                NavigationLink("Blue") { Destination2View(color: .blue) }
                NavigationLink("Green") { Destination2View(color: .green) }
                NavigationLink("Purple") { Destination2View(color: .purple) }
                NavigationLink("Cyan") { Destination2View(color: .cyan) }
            }
            .navigationTitle("遷移")
        } detail: {
            VStack {
                Text("未選択")
                    .font(.title2).foregroundStyle(.gray)
                    .padding(.bottom, 2.0)
                Text("左のサイドバーから\n表示する View を選択してください。")
                    .font(.subheadline).foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

#Preview {
    SplitTransitView()
}
