//
//  PushTransitView.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/03/04
//  
//

import SwiftUI

struct PushTransitView: View {
    var body: some View {
        /// - `NavigationView {} (Deprecated)`
        /// プッシュ遷移の View 要素を表す。
        /// navigationTitle があればナビゲーションバーが表示される。
        /// Deprecated: 代わりに以下の 2 つを使うことができる。
        ///
        /// - `NavigationStack {}`
        /// これが通常のプッシュ遷移
        ///
        /// - `NavigationSplitView {} detail: {}`
        /// iPad では UISplitViewController の形式で表示される。
        /// - parameter detail: 未選択の時の詳細ビューに表示するもの
        ///
        NavigationStack {
            VStack {
                // MARK: テキスト単体
                
                NavigationLink("テキスト単体") {
                    Destination1View(color: .red)
                }
                .foregroundStyle(.red)
                .fontWeight(.bold)
                
                // MARK: Labelをカスタマイズ
                
                NavigationLink {
                    Destination1View(color: .blue)
                } label: {
                    Image(.icon)
                        .resizable()
                        .aspectRatio(3, contentMode: .fit)
                        .frame(height: 80)
                        .opacity(0.2)
                        .overlay {
                            Text("Labelをカスタマイズ")
                                .font(.title2).fontWeight(.bold)
                                .foregroundStyle(.blue)
                        }
                }
            }
            /// navigationTitle は NavigationView のモディファイアではなく
            /// NavigationView 内の要素に書くモディファイア
            .navigationTitle("プッシュ遷移")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    PushTransitView()
}
