//
//  SafariView.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/03/02
//  
// 参考: https://github.com/basememara/ZamzamKit/blob/9f0a80a8dd26e879c134e98aa3732ad9c725b2e0/Sources/ZamzamUI/Sheets/SafariSheet.swift

import SwiftUI
import SafariServices

fileprivate struct SafariView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: Context) -> UIViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

extension View {
    func sheet(safari url: Binding<URL?>) -> some View {
        // モーダル遷移は .sheet
        // 全画面モーダルは .fullScreenCover
        fullScreenCover(
            isPresented: Binding<Bool>(
                // url が nil でないならモーダルを表示
                get: { url.wrappedValue != nil },
                // モーダルが解除されたら url を nil に
                set: {
                    guard !$0 else { return }
                    url.wrappedValue = nil
                }
            )
        ) {
            if let url = url.wrappedValue {
                SafariView(url: url)
                    .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    SafariView(url: URL(string: "https://github.com/Se1getsu")!)
}
