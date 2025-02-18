//
//  Searchbar.swift
//  Nature
//
//Import Julien 03/02/24
import SwiftUI

struct Searchbar: View {
    @Binding var searchText: String
//    let workshopNames : Workshop
//
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 380, height: 36)
                .foregroundColor(.gray)
                .opacity(0.5)
                .cornerRadius(40)
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white)
                    .padding(.leading)
                TextField("Recherche", text: $searchText)
                    .foregroundColor(.white)
                Spacer()
                    .frame(width: 220)
                
            }
        }
    }
    }


#Preview {
    Searchbar(searchText: .constant(""))
}
