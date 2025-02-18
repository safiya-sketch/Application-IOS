//
//  ChatDetailView.swift
//  Nature
//
// Created by Safiya
//

import SwiftUI

struct ChatDetailView: View {
    @State var isMyMessage: Bool = false
    let chatArray :  [ChatDetail]
    @State var message: String = ""
    
    var user : User
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Image(user.profilImage)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .cornerRadius(180)
                        .padding()
                    Image(systemName: "circle.fill")
                        .foregroundColor(user.isOnline ? .green : .red)
                        .font(.title2)
                        .padding(.bottom, 40)
                        .padding(.leading, 40)
                    
                }
                VStack(alignment: .leading) {
                    Text(user.username)
                        .font(.title)
                        .padding(.top, -10)
                    if user.isOnline {
                        Text("En ligne")
                            .font(.title2)
                            .foregroundStyle(.gray)
                            .padding(.top, -5)
                    } else {
                        Text("Hors ligne")
                            .font(.title2)
                            .foregroundStyle(.gray)
                            .padding(.top, -5)
                    }
                }
                Spacer()
                Spacer()
//                Button {
//                    
//                } label: {
//                    Image(systemName: "phone.fill")
//                        .resizable()
//                        .frame(width: 30, height: 30)
//                        .padding(.top, -25)
//                        .foregroundColor(.black)
//                }
                Spacer()
                
            }
            
            
            Divider()
            Spacer()
            
            ScrollView {
                VStack {
                    ForEach(chatArray) { chat in
                        HStack {
                            Text(chat.date)
                                
                            Text(chat.time)
                                
                        }
                        VStack(alignment: .leading) {
                            
                            HStack {
                                
                                if chat.isSent {
                                    Spacer()
                                }
                                Text(chat.message)
                                    .padding()
                                    .background(chat.isSent ? .green : .gray)
                                    .frame(width: 300)
                                    .cornerRadius(24)
                                    .foregroundColor(.white)
                                
                                
                                if !chat.isSent {
                                    Spacer()
                                }
                            
                            }
                            
                        }
                        .padding(4)
                    }
                    if isMyMessage {
                        HStack {
                            Spacer()
                            Text(message)
                                .padding()
                                .background(.green)
                                .cornerRadius(50)
                            .foregroundColor(.white)
                        }
                        .padding()
                    }
                    
                    
                }
                Spacer()
                
            }
            
            
            HStack {
                
                TextField("Tapez votre message...", text: $message)
                    .foregroundStyle(.gray)
                    .padding()
                    .background(.white)
                    .border(.gray)
                    .cornerRadius(24)
                
                    .padding()
                Button {
                    isMyMessage = true
                } label: {
                    Image(systemName: "paperplane.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 24)
                        .foregroundColor(.white)
                }
                
            }
            .frame(width: UIScreen.main.bounds.width)
            .background(Color.gray)
            Spacer()
        }
    }
    
}


#Preview {
    ChatDetailView(chatArray: chat3, user: users[2])
}


