//
//  SearchResultExtView.swift
//  Nature
//
// Created by Julien
//

import SwiftUI

struct SearchResultExtView: View {
    
    var workshop : Workshop
    
    var width: CGFloat = UIScreen.main.bounds.width
    
    var body: some View {
        
        NavigationLink {
            WorkshopDetailView(workshop: workshop)
        } label: {
            VStack(alignment: .leading, spacing: 6.0) { //Ajout du spacing (à discuter)

                
                ForEach(users) { user in
                    if user.username == workshop.organizer {
                        
                        HStack  {
                            Image(user.profilImage)
                                .resizable()
                                .frame(width: 40, height: 40)
                                .cornerRadius(25)
                            Text(workshop.organizer)
                        }
                    }
                }
                Image(workshop.workshopImage)
                    .resizable()
                    .frame(width: width / 2 - 20, height: 110)
                    .scaledToFill()
                    .cornerRadius(8)
                
                if workshop.name.count > 25 { //Ajout du multiligne (à discuter)
                    Text(workshop.name)
                        .font(.system(size: 16))
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .frame(height: 39)
                    Text("\(workshop.date)   \(workshop.startTime) à \(workshop.endTime)")
                        .font(.system(size: 12))
                } else {
                    Text(workshop.name)
                        .font(.system(size: 16))
                    Text("\(workshop.date)   \(workshop.startTime) à \(workshop.endTime)")
                        .font(.system(size: 12))
                }
            }
            .frame(width: width / 2 - 20)
            
            
        }
        .foregroundColor(.black)
    }
}
#Preview {
    SearchResultExtView(workshop: workshops[6])
}

