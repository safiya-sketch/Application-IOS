//
//  NotifView.swift
//  Nature
//
//  Created by Abdelmalik
//

import SwiftUI

struct NotifView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text ("Notifications ")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                Text ("Vous avez 3 notifications aujourd'hui")
                
                ScrollView {
                    Spacer()
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("Aujourd'hui")
                            .fontWeight(.heavy)
                            .padding([.leading, .bottom])
                        Spacer()
                        
                        NavigationLink {
                            ProfileView(user: users[7])
                        } label: {
                            HStack{
                                Image(users[7].profilImage)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(50)
                                VStack(alignment: .leading){
                                    Text(users[7].username)
                                        .font(.title2)
                                        .foregroundStyle(.black)
                                    
                                    
                                    Text("aime votre atelier (il y a 2h)")
                                        .foregroundStyle(.gray)
                                    
                                }
                            }
                        }
                        
                        
                        NavigationLink {
                            ProfileView(user: users[3])
                        } label: {
                            
                            HStack{
                                Image(users[3].profilImage)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(50)
                                VStack(alignment: .leading){
                                    Text(users[3].username)
                                        .font(.title2)
                                        .foregroundStyle(.black)
                                    
                                    
                                    Text("s'est inscrit à votre atelier (il y a 5@h)")
                                        .foregroundStyle(.gray)
                                    
                                }
                            }
                        }
                        NavigationLink {
                            ProfileView(user: users[8])
                        } label: {
                            HStack{
                                Image(users[8].profilImage)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(50)
                                VStack(alignment: .leading){
                                    Text(users[8].username)
                                        .font(.title2)
                                        .foregroundStyle(.black)
                                    
                                    Text("aime votre atelier (il y a 22h)")
                                        .foregroundStyle(.gray)
                                    
                                }
                            }
                        }
                        Spacer()
                        Text("Hier")
                            .fontWeight(.heavy)
                            .padding([.leading, .top, .bottom])
                        Spacer()
                        
                        NavigationLink {
                            ProfileView(user: users[1])
                        } label: {
                            HStack{
                                Image(users[1].profilImage)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(50)
                                VStack(alignment: .leading){
                                    Text(users[1].username)
                                        .font(.title2)
                                        .foregroundStyle(.black)
                                    
                                    
                                    Text("n'aime plus votre atelier (il y a 1j)")
                                        .foregroundStyle(.gray)
                                    
                                    
                                }
                            }
                        }
                        NavigationLink {
                            ProfileView(user: users[9])
                        } label: {
                            HStack{
                                Image(users[9].profilImage)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(50)
                                VStack(alignment: .leading){
                                    Text(users[9].username)
                                        .font(.title2)
                                        .foregroundStyle(.black)
                                    
                                    
                                    Text("s'est inscrit à votre atelier (il y a 1j)")
                                        .foregroundStyle(.gray)
                                    
                                    
                                    
                                }
                            }
                        }
                        
                        //                Button {
                        //
                        //                } label: {
                        //                    Text("Charger plus")
                        //                }
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}


#Preview {
    NotifView()
}
