//
//  Button1.swift
//  Nature
//
//  Created by apprenant50 on 02/02/2024.
//

import SwiftUI

struct Button1 : View {
    let texte: String
    var body: some View {
        Text(texte)
            .padding(.all)
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
