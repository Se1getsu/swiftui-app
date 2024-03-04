//
//  Destination2View.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/03/04
//  
//

import SwiftUI

struct Destination2View: View {
    var color: Color
    
    var body: some View {
        Text("Destination 2")
            .font(.title2).fontWeight(.semibold)
            .foregroundStyle(color)
            .navigationTitle(color.description.capitalized)
    }
}

#Preview {
    NavigationStack {
        Destination2View(color: .red)
    }
}
