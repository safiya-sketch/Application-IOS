//
//  ContentView.swift
//  Nature
//
//  Created by Safiya on 02/02/2024.
//

import SwiftUI

struct ContentView: View {
    var user = users[5]
    var body: some View {
            TabView {
                WorkshopView()
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Ateliers")
                    }
                NotifView()
                    .tabItem {
                        Image(systemName: "bell.badge")
                        Text("Notifications")
                    }
                WorkshopCreationView()
                    .tabItem {
                        Image(systemName: "plus.circle.fill")
                        Text("Create")
                    }
                ChatView()
                    .tabItem {
                        Image(systemName: "message")
                        Text("Chat")
                    }
                ProfileView(user: user)
                    .tabItem {
                        Image(systemName: "person.crop.circle.fill")
                        Text("Profil")
                    }
            }
        }
    }

#Preview {
    ContentView()
}
