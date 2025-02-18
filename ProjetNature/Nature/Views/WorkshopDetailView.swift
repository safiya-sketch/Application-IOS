//
//  WorkshopDetailView.swift
//  Nature
//
// Created by Aurélien
//

import SwiftUI

struct WorkshopDetailView: View {
    var workshop: Workshop
    @State var favoriteButton: Bool = false
    @State var register: Bool = false
    let columns = [
        GridItem(.adaptive(minimum: 60))]
    var body: some View {
//        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    HStack {
                        Text(workshop.name)
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(height: 70.0)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    ForEach(infoCat) { cat in
                        if cat.nameCategory.rawValue.contains(workshop.category.rawValue) {
                            CategoryDescView(title: cat.nameCategory.rawValue, definition: cat.openMessage, isTitle: false)
                        }
                    }
                }
                
                ZStack {
                    Image(workshop.workshopImage)
                        .resizable()
                        .cornerRadius(8.0)
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom)
                    Button {
                        if favoriteButton {
                            favoriteButton = false
                        } else {
                            favoriteButton = true
                        }
                    } label: {
                        if favoriteButton {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30.0)
                                .position(x: 330, y: 30)
                        } else {
                            Image(systemName: "heart")
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30.0)
                                .position(x: 330, y: 30)
                        }
                    }
                }
                VStack {
                    HStack {
                        Text("Organisateur")
                            .font(.callout)
                            .fontWeight(.bold)
                        
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15.0)
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15.0)
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15.0)
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15.0)
                        Image(systemName: "star")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15.0)
                        Spacer()
                    }
                    HStack {
                        ForEach(users) { user in
                            if user.username.contains(workshop.organizer) {
                                NavigationLink(
                                    destination: ProfileView(user: user),
                                    label: {
                                        UserThumbnail(user: user)
                                    })
                            }
                        }
                        VStack {
                            Text(workshop.organizer)
                                .font(.callout)
                            Text("20 ans")
                                .font(.callout)
                        }
                        Spacer()
                    }
                    .padding(.bottom)
                    
                    HStack {
                        Text(workshop.description)
                            .padding(.bottom)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Cet atelier aura lieu le \(workshop.date) de \(workshop.startTime) à \(workshop.endTime) à \(workshop.place).")
                        Spacer()
                    }
                    .padding(.bottom)
                    
                    HStack {
                        if register {
                            Text("Participants : \(workshop.currentReg.count+1) / \(workshop.maxReg)")
                                .font(.callout)
                                .fontWeight(.bold)
                        } else {
                            Text("Participants : \(workshop.currentReg.count) / \(workshop.maxReg)")
                                .font(.callout)
                                .fontWeight(.bold)
                        }
                        
                        Spacer()
                    }
                    VStack {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(workshop.currentReg, id: \.self) { regUser in
                                ForEach (users) { user in
                                    if user.username.contains(regUser) {
                                        NavigationLink(
                                            destination: ProfileView(user: user),
                                            label: {
                                                UserThumbnail(user: user)
                                            })
                                    }
                                }
                            }
                            if register {
                                NavigationLink(
                                    destination: ProfileView(user: users[5]),
                                    label: {
                                        UserThumbnail(user: users[5])
                                    })
                            }
                        }
                        .padding(.bottom)
                        Button {
                            withAnimation {
                                if register {
                                    register = false
                                } else {
                                    register = true
                                }
                            }
                        } label: {
                            if register {
                                Button1(texte: "J'annule ma participation")
                            } else {
                                Button1(texte: "Je participe")
                            }
                        }
                    }
                }
            }
            .padding(.top, 5)
            .padding(.horizontal, 8)
            .scrollIndicators(.hidden)
        }
    }
//}

#Preview {
    WorkshopDetailView(workshop: workshops[12])
}
