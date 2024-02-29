//
//  AlphaView.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/02/29
//  
//

import SwiftUI

struct AlphaView: View {
    @State var text = "こんにちは"
    
    var body: some View {
        VStack {
            Spacer()
            
            // MARK: 画像
            Image("icon")
                // リサイズしてOK！
                .resizable()
                // 画面に収まるようにして！
                .aspectRatio(contentMode: .fit)
            
            // MARK: ラベル
            Text(text)
                // 文字を大きく
                .font(.title)
                // 最大まで広く、文字左揃え、高さ100で
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 100)
                // 背景色・文字色
                .background(Color.purple)
                .foregroundStyle(.white)
            
            Spacer()
            
            // MARK: Buttonの書き方(1)
            Button("ボタン") {
                text = "こんばんは"
            }
            // 下にスペースを開けるモディファイア
            .padding(.bottom)
            
            // MARK: Buttonの書き方(2)
            Button(
                action: {
                    text = "こんにちは"
                },
                label: {
                    Text("リセット")
                }
            )
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    AlphaView()
}
