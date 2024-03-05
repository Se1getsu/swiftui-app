//
//  VMIChildView.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/03/05
//  
//

import SwiftUI

struct VMIChildView<ViewModel>: View where ViewModel: VMIViewModelProtocol {
    @Environment(\.dismiss) private var dismiss
    @StateObject private var viewModel: ViewModel
    
    init(viewModel: @autoclosure @escaping () -> ViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel())
    }

    var body: some View {
        Button("戻る") { dismiss() }
            .font(.title2)
            .navigationTitle("ChildView \(viewModel.idString)")
            .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    VMIChildView(viewModel: VMIViewModel(index: 1))
}
