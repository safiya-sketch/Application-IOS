//
//  FollowersView.swift
//  Nature
//
//  Created by apprenant50 on 06/02/2024.
//

import SwiftUI

struct FollowersView: View {
    @Environment(\.dismiss) var dismiss
    let columns = [
        GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Ils me suivent :")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.vertical)
                        Spacer()
                    }
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        
                        ForEach(users[5].follows, id: \.self) { follower in
                            ForEach(users) { user in
                                if follower.contains(user.username) {
                                    HStack {
                                        NavigationLink(
                                            destination: ProfileView(user: user),
                                            label: {
                                                UserThumbnail(user: user)
                                                Text(user.username)
                                                    .foregroundColor(Color.black)
                                                Spacer()
                                            })
                                    }
                                }
                            }
                        }}
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    FollowersView()
}
