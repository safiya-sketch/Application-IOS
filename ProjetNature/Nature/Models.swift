//
//  Models.swift
//  Nature
//
//  Created by apprenant50 on 02/02/2024.
//

import SwiftUI

struct Workshop: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var organizer: String
    var workshopImage: String
    var place: String
    var date: String
    var startTime: String
    var endTime: String
    var category: Categories
    var description: String
    var isForChildren: Bool
    var currentReg: [String]
    var maxReg: Int
    var nbFavorites : Int
    var materialReq: String
    var materialPro: String
//    var financialContrib: Int
}

struct User: Identifiable {
    var id = UUID()
    var isSelf: Bool
    var name: String
    var lastname: String
    var username: String
    var password: String
    var email: String
    var birthday: String
    var profilImage: String
    var bio: String
    var favorite: [Workshop]
    var registration: [Workshop]
    var history: [Workshop]
    var organized: [Workshop]
    var nbFollowers: Int
    var follows: [String]
    var isOnline: Bool
}

struct ChatDetail: Identifiable {
    var id = UUID()
    var isSent: Bool
    var message: String
    var correspondantUsername: User
    var date: String
    var time: String
}

struct Info : Identifiable {
    var id = UUID()
    var openMessage : String
    var nameCategory : Categories
}
