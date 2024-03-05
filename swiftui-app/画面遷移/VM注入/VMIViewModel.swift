//
//  VMIViewModel.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/03/05
//  
//

import Foundation

class ViewModel: ObservableObject {
    init() { print("ViewModel \(idChar) init") }
    deinit { print("ViewModel \(idChar) deinit") }
}

/// デバッグ用プロパティ`idChar` の実装
extension ViewModel {
    private static var idMap = [ObjectIdentifier: Character]()
    
    /// viewModel のメモリ上の ID に A, B, C, D, ... の文字を対応付けて返す
    var idChar: String {
        let objectID = ObjectIdentifier(self)
        Self.idMap[objectID] = Self.idMap[objectID] ?? Character(UnicodeScalar(UInt32(0x41 + Self.idMap.count))!)
        return Self.idMap[objectID]!.description
    }
}
