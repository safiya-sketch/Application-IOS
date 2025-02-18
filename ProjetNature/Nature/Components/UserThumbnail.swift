//
//  UserThumbnail.swift
//  Nature
//
//  Created by apprenant50 on 02/02/2024.
//

import SwiftUI

struct UserThumbnail: View {
    var user: User
    var body: some View {
        Image(user.profilImage)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 60.0, height: 60.0)
            .cornerRadius(30)
    }
}

#Preview {
    UserThumbnail(user: users[5])
}
