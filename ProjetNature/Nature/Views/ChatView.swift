//
//  ChatView.swift
//  Nature
//
// Created by Safiya
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    VStack {
                        Text("Messages")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                    }
                    List(users) { user in
                        if !user.username.contains("amélieR") {
                            NavigationLink {
                                ChatDetailView(chatArray: chat3, user: user)
                            } label: {
                                ExtractedViewListChat(userChat: user)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ChatView()
}

struct ExtractedViewListChat: View {
    var userChat : User
    
    var body: some View {
        HStack {
            ZStack {
                Image(userChat.profilImage)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
                Image(systemName: "circle.fill")
                    .foregroundColor(userChat.isOnline ? .green : .red)
                    .font(.title3)
                    .padding(.top, 30)
                    .padding(.leading, 40)
            }
            
            VStack(alignment: .leading) {
                Text(userChat.username)
                    .font(.title2)
                if userChat.isOnline {
                    Text("En ligne")
                        .foregroundStyle(.gray)
                } else {
                    Text("Hors Ligne")
                        .foregroundStyle(.gray)
                }
            }
            .padding()
            Spacer()
        }
    }
}
