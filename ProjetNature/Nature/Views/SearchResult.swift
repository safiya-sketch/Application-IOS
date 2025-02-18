//
//  SearchResult.swift
//  Nature
//
// Created by Julien
//

import SwiftUI

struct SearchResult: View {
    var workshopsAll : [Workshop]
    let columns = [
        GridItem(.flexible()), GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    ForEach(infoCat) { category in
                        if category.nameCategory.rawValue.contains(workshopsAll[0].category.rawValue) {
                            CategoryDescView(title: category.nameCategory.rawValue, definition: category.openMessage, isTitle: true)
                        }
                    }
                    Spacer()
                }
            }
            .padding(.horizontal, 8)
            
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(workshopsAll) { workshop in
                    SearchResultExtView(workshop: workshop)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    SearchResult(workshopsAll: workshops)
}
