//
//  ExtractedViewListCategories.swift
//  Nature
//
// Created by Julien
//

import SwiftUI

struct ExtractedViewListCategories: View {
    
    var workshopsAll : [Workshop]
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack(alignment: .top){
                ForEach(workshopsAll) { workshop in
                        SearchResultExtView(workshop: workshop)
                }
            }
        }
    }
}

#Preview {
    ExtractedViewListCategories(workshopsAll: workshops)
}
