//
//  VMIChildView.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/03/05
//  
//

import SwiftUI

struct VMIChildView: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject private var viewModel: ViewModel
    private let index: Int
    
    init(viewModel: @autoclosure @escaping () -> ViewModel, index: Int) {
        _viewModel = StateObject(wrappedValue: viewModel())
        self.index = index
    }

    var body: some View {
        Button("戻る") { dismiss() }
            .font(.title2)
            .navigationTitle("ChildView \(index)-\(viewModel.idChar)")
            .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    VMIChildView(viewModel: ViewModel(), index: 1)
}
