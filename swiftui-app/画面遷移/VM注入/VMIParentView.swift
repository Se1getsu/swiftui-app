//
//  VMIParentView.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/03/05
//  
//

import SwiftUI

struct VMIParentView: View {
    var body: some View {
        NavigationView {
            List(1...3, id: \.self) { index in
                NavigationLink {
                    VMIChildView(viewModel: ViewModel(), index: index)
                } label: {
                    Text("\(index)")
                }
            }
            .navigationTitle("ParentView")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    VMIParentView()
}
