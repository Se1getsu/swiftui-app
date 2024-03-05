//
//  VMIViewModelProtocol.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/03/05
//  
//

import Foundation

protocol VMIViewModelProtocol: ObservableObject {
    var idString: String { get }
}

extension VMIViewModel: VMIViewModelProtocol {}
