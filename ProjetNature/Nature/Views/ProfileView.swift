//
//  NotifView.swift
//  Nature
//
//  Created by Badis
//

import SwiftUI

struct ProfileView: View {
    var user: User
    @State private var showingSheet = false
    @State private var showingFollowers = false
    var body: some View {
//        NavigationView {
        NavigationStack {

            ZStack {
                ScrollView (showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 12) {
                        
                        HStack(spacing: 40) {
                            Image(user.profilImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 125.0, height: 125.0)
                                .cornerRadius(62.5)
                            
                            Text(user.username)
                                .fontWeight(.bold)
                                .font(.system(size: 36))
                            
                        }
                        
                        HStack(spacing: 1) {
                            
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star")
                            Image(systemName: "star")
                            Spacer()
                            
                            if user.isSelf {
                                Button("Abonnés : \(user.nbFollowers)") {
                                    showingFollowers.toggle()
                                }
                                .padding(.all)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
//                                .padding(20)
//                                .foregroundColor(.white)
//                                .fontWeight(.semibold)
//                                .background(.blue)
//                                .cornerRadius(20)
                                .sheet(isPresented: $showingFollowers) {
                                    FollowersView()
                                }
                            } else {
                                Text("Abonnés : \(user.nbFollowers)")
                            }
                            
                            Spacer()
                            
                        }
                        .padding()
                        
                        Text("Bio :")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                        
                        Text(user.bio)
                            .foregroundColor(.gray)
                            .padding(.bottom, 12)
                        
                        Text("Je suis inscrit :")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                        
                        ForEach(user.registration) { regWorkshop in
                            NavigationLink(
                                destination: WorkshopDetailView(workshop: regWorkshop),
                                label: {
                                    Image(regWorkshop.workshopImage)
                                        .resizable()
                                        .frame(width: 100, height: 60)
                                    Text(regWorkshop.name)
                                        .foregroundColor(.gray)
                                        .padding(.bottom, 12)
                                })
                        }
                        .padding(.bottom,7)
                        Divider()
                        
                        if user.isSelf {
                            Text("J'aime :")
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                            
                            VStack(alignment: .leading){
                                ForEach(user.favorite) { favoriteName in
                                    NavigationLink(
                                        destination: WorkshopDetailView(workshop: favoriteName),
                                        label: {
                                            Image(favoriteName.workshopImage)
                                                .resizable()
                                                .frame(width: 100, height: 60)
                                            Text(favoriteName.name)
                                                .foregroundColor(.gray)
                                        })
                                }
                            }
                            .padding(.bottom, 12)
                            Divider()
                        }
                        
                        Text("J'organise :")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                        
                        ForEach(user.organized) { historyWorkshop in
                            NavigationLink(
                                destination: WorkshopDetailView(workshop: historyWorkshop),
                                label: {
                                    Text(historyWorkshop.name)
                                        .foregroundColor(.gray)
                                })
                        }
                        .padding(.bottom, 12)
                        
                        if user.isSelf {
                            Divider()
                            Text("J'ai organisé :")
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                            
                            ForEach(user.organized) { historyWorkshop in
                                NavigationLink(
                                    destination: WorkshopDetailView(workshop: historyWorkshop),
                                    label: {
                                        Text(historyWorkshop.name)
                                            .foregroundColor(.gray)
                                    })
                            }
                            .padding(.bottom, 12)
                            Divider()
                            
                            Text("J'y étais :")
                                .fontWeight(.bold)
                                .font(.system(size: 25))
                            
                            ForEach(user.history) { historyWorkshop in
                                NavigationLink(
                                    destination: WorkshopDetailView(workshop: historyWorkshop),
                                    label: {
                                        Text(historyWorkshop.name)
                                            .foregroundColor(.gray)
                                            .padding(.bottom, 12)
                                    })
                            }
                        }
                    }
                    
                }
                VStack {
                    Spacer()
                    if user.isSelf {
                        Button {
                            showingSheet.toggle()
                        } label: {
                            Button1(texte: "Modifier")

//                            Text("Modifier")
//                                .padding(20)
//                                .foregroundColor(.white)
//                                .fontWeight(.semibold)
//                                .background(.blue)
//                                .cornerRadius(20)
                        }
                        .frame(width: 120)
                        .padding(.bottom, 8)
                        .sheet(isPresented: $showingSheet) {
                            ProfileEditView(user: user)
                        }
                        
                    } else {
                        HStack {
                            NavigationLink {
                                ChatDetailView(chatArray: chat2, user: user)
                            } label: {
                                Button1(texte: "Message")

//                                Text("Message")
//                                    .padding(20)
//                                    .foregroundColor(.white)
//                                    .fontWeight(.semibold)
//                                    .background(.blue)
//                                    .cornerRadius(20)
                            }
                            .frame(width: 120)
                            
                            Button {
                                showingSheet.toggle()
                            } label: {
                                Button1(texte: "Suivre")
//                                Text("Suivre")
//                                    .padding(20)
//                                    .foregroundColor(.white)
//                                    .fontWeight(.semibold)
//                                    .background(.blue)
//                                    .cornerRadius(20)
                            }
                            .frame(width: 120)
                        }
                    }
                }
                
            }
                .padding()
//                .ignoresSafeArea()
        }
//        .padding()
//        .ignoresSafeArea()
    }
}

#Preview {
    ProfileView(user: users[2])
}

