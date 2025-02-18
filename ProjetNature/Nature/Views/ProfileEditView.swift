//
//  NotifView.swift
//  Nature
//
//  Created by Badis
//

import SwiftUI

struct ProfileEditView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var pseudo: String = ""
    @State private var nom: String = ""
    @State private var prenom: String = ""
    @State private var email: String = ""
    @State private var adress: String = ""
    @State private var mdp: String = ""
    @State private var anniversaire: String = ""
    
    var user: User
    var body: some View {

        ZStack {
            Color(.grayNotif)
            VStack() {
                Image(user.profilImage)
                    .resizable()
                    .frame(width: 75.0, height: 75.0)
                    .cornerRadius(100)
                    .padding(.top)
                HStack {
                    Text(user.name)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                    Text(user.lastname)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                }
                
                    List {
                        HStack {
                            Text("Pseudo :")
                            TextField(user.username, text: $pseudo)
                        }
                        HStack {
                            Text("Nom :")
                            TextField(user.lastname, text: $nom)
                        }
                        HStack {
                            Text("Prénom :")
                            TextField(user.name, text: $prenom)
                        }
                        HStack {
                            Text("Email :")
                            TextField(user.email, text: $email)
                        }
//                        HStack {
//                            Text("Adress :")
//                            TextField(user., text: $adress)
//                        }
                        HStack {
                            Text("Mot de passe :")
                            TextField("*****", text: $mdp)
                        }
                        HStack {
                            Text("Anniversaire :")
                            TextField(user.birthday, text: $anniversaire)
                    }
                }
                
                Button {
                    dismiss()
                } label: {
                    Text("Enregistrer")
                        .padding(20)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .background(.blue)
                        .cornerRadius(20)
                    
                }
                .frame(width: 150)
            }
            .padding(.vertical, 100)
        }
        .ignoresSafeArea()
        
        

        
        
    }
}
                
#Preview {
    ProfileEditView(user: users[5])
}
