//
//  CategoryView.swift
//  Nature
//
//  Created by Aurélien
//

import SwiftUI

struct CategoryDescView: View {
    let title: String
    let definition: String
    let isTitle: Bool
    @State private var isShowingDef = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if isTitle {
                    Text(title)
                        .font(.title2)
                        .fontWeight(.bold)
                } else {
                    Text(title)
                        .font(.callout)
                        .fontWeight(.bold)
                }
                
                Button(action: {
                    withAnimation {
                        isShowingDef.toggle()
                    }
                }) {
                    Image(systemName: "info.circle")
                        .foregroundColor(.blue)
                }
            }
            
            if isShowingDef {
                Text(definition)
                    .font(.body)
            }
        }
    }
}

#Preview {
    CategoryDescView(title: "Réduction des déchets", definition: "Ces ateliers sont axés sur la minimisation de la production de déchets en adoptant des pratiques et des alternatives durables. Ils encouragent souvent la réutilisation, le recyclage et la réduction de la consommation de plastique.", isTitle: true)
}

