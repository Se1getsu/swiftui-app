//
//  Destination1View.swift
//  swiftui-app
//  
//  Created by Seigetsu on 2024/03/04
//  
//

import SwiftUI

struct Destination1View: View {
    var color: Color
    
    var body: some View {
        Text("Destination 1")
            .font(.title2).fontWeight(.semibold)
            .foregroundStyle(color)
            .navigationTitle(color.description.capitalized)
    }
}

#Preview {
    NavigationStack {
        Destination1View(color: .red)
    }
}
