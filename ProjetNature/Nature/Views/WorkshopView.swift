//
//  WorkshopView.swift
//  Nature
//
// Created by Julien
//

import SwiftUI

struct WorkshopView: View {
    @State var searchText = ""
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                ScrollView (showsIndicators: false) {
                    
                    Searchbar(searchText: $searchText)
                    
                    ForEach(Categories.allCases) { category in
      
                            var searchResults: [Workshop] {
                                if searchText.isEmpty {
                                    return filteredWorkshopsByCategory(category: category)
                                } else {
                                    return filteredWorkshopsByCategory(category: category).filter { $0.name.lowercased().contains(searchText.lowercased()) }
                                }
                            }
                        
                        if !filteredWorkshopsByCategory(category: category).isEmpty && !searchResults.isEmpty {
                            
                            HStack {

                                    Text(category.rawValue)
                                        .font(.system(size: 22))
                                        .fontWeight(.semibold)
                                        .padding(.top, 8)
                                    
                                    Spacer()
                                    
                                    NavigationLink {
                                        SearchResult(workshopsAll: filteredWorkshopsByCategory(category: category))
                                    } label: {
                                        Text ("Tout voir")
                                            .font(.system(size:20))
                                            .foregroundColor(.cyan)
                                            .padding(.top, 8)
                                    }
                                }
                                .padding(.top)
                                ScrollView (.horizontal, showsIndicators: false) {
                                    
                                    ExtractedViewListCategories(workshopsAll: searchResults)
                                }
                                .padding(.vertical, 8)
                            }
                        }
                    }
                    .padding(.horizontal, 8)
                                        
                }
            }
        }
    }
    

#Preview {
    WorkshopView()
}
