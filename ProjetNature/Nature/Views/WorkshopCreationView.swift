//
//  WorkshopCreationView.swift
//  Nature
//
//  Created by Abdelmalik
//

import PhotosUI

import SwiftUI

struct WorkshopCreationView: View {
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    @State private var date: String = ""
    @State private var time: String = ""
    @State private var place: String = ""
    @State private var categories: String = ""
    @State private var description: String = ""
    @State private var requires: String = ""
    @State private var others: String = ""
    
    @State private var isPublished: Bool = false
    @State var bounce : Int = 0
    
    @State private var selectedCategories = ""
    
    
    var body: some View {
        ZStack {
            
            Color(.grayNotif)
            Spacer()
            
            VStack {
                Spacer()
                HStack {
                    
                    Button {
                        isPublished = true
                        bounce += 1
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            isPublished = false
                        }
                        
                    } label: {
                        Text("Publier")
                            .font(.title2)
                            .padding(.top, 50.0)
                            .padding(.horizontal, 20.0)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                    
                }
                Text("Détail de l'atelier :")
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ScrollView {
                    
                    VStack {
                        
                        //                        PhotosPicker("Choisir une photo", selection: $avatarItem, matching: .images)
                        PhotosPicker("Choisir une photo", selection: $avatarItem, matching: .images)
                            .frame(width: 356, height: 23)
                            .padding(10)
                            .overlay(RoundedRectangle(cornerRadius:12)
                                .stroke(lineWidth: 1)
                                .foregroundColor(.gray))
                            .background(.white)
                        avatarImage?
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                    }
                    .onChange(of: avatarItem) {
                        Task {
                            if let loaded = try? await avatarItem?.loadTransferable(type: Image.self) {
                                avatarImage = loaded
                            } else {
                                print("Failed")
                            }
                        }
                    }
                    
                    VStack {
                        HStack {
                            Text("Catégorie")
                                .foregroundStyle(.gray.opacity(0.5))
                            Spacer()
                            Picker("Categorie", selection: $selectedCategories) {
                                ForEach(Categories.allCases) { categorie in
                                    Text(categorie.rawValue)
                                }
                            }
                        }
                        .frame(width: 355, height: 43)
                        .padding(.horizontal, 10)
                        .overlay(RoundedRectangle(cornerRadius:12)
                            .stroke(lineWidth: 1)
                            .foregroundColor(.gray))
                        .background(.white)
                        
                        TextField("Date", text: $date)
                            .padding(10)
                            .overlay(RoundedRectangle(cornerRadius:12)
                                .stroke(lineWidth: 1)
                                .foregroundColor(.gray))
                            .background(.white)
                        
                        
                        TextField("Heure de début", text: $time)
                            .padding(10)
                            .overlay(RoundedRectangle(cornerRadius:12)
                                .stroke(lineWidth: 1)
                                .foregroundColor(.gray))
                            .background(.white)
                        TextField("Heure de fin", text: $time)
                            .padding(10)
                            .overlay(RoundedRectangle(cornerRadius:12)
                                .stroke(lineWidth: 1)
                                .foregroundColor(.gray))
                            .background(.white)
                        TextField("Lieu", text: $place)
                            .padding(10)
                            .overlay(RoundedRectangle(cornerRadius:12)
                                .stroke(lineWidth: 1)
                                .foregroundColor(.gray))
                            .background(.white)
                        
                        
                        TextField("Description", text: $description)
                            .padding(10)
                            .overlay(RoundedRectangle(cornerRadius:12)
                                .stroke(lineWidth: 1)
                                .foregroundColor(.gray))
                            .background(.white)
                        
                        TextField("Matériel requis", text: $requires)
                            .padding(10)
                            .overlay(RoundedRectangle(cornerRadius:12)
                                .stroke(lineWidth: 1)
                                .foregroundColor(.gray))
                            .background(.white)
                        
                        TextField("Matériel fourni", text: $requires)
                            .padding(10)
                            .overlay(RoundedRectangle(cornerRadius:12)
                                .stroke(lineWidth: 1)
                                .foregroundColor(.gray))
                            .background(.white)
                        
                        TextField("Participants max", text: $requires)
                            .padding(10)
                            .overlay(RoundedRectangle(cornerRadius:12)
                                .stroke(lineWidth: 1)
                                .foregroundColor(.gray))
                            .background(.white)
                        
//                        HStack {
//                            Text("Catégorie")
//                                .foregroundStyle(.gray.opacity(0.5))
//                            Spacer()
//                            Picker("Categorie", selection: $selectedCategories) {
//                                ForEach(Categories.allCases) { categorie in
//                                    Text(categorie.rawValue)
//                                }
//                            }
//                        }
//                        .frame(width: 355, height: 43)
//                        .padding(.horizontal, 10)
//                        .overlay(RoundedRectangle(cornerRadius:12)
//                            .stroke(lineWidth: 1)
//                            .foregroundColor(.gray))
//                        .background(.white)
                        
                        
                        Spacer()
                        
                    }
                    .padding(.horizontal, 8.0)
                    
                    
                }
                .padding(.bottom)
                
            }
            if isPublished {
                
                Text("Atelier créé avec succès")
                    .padding()
                    .background(.green)
                    .cornerRadius(60)
                    .opacity(1)
                
                Spacer()
                    .frame(height: 150)
                
                
            }
        }
        .ignoresSafeArea()
        
    }
    
}

#Preview {
    WorkshopCreationView()
}
