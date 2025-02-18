//
//  chat.swift
//  Nature
//
//  Created by Safiya
//

import SwiftUI

var chat: [ChatDetail] = [
    ChatDetail(isSent: false, message: "Bonjour! J'adore l'idée des ateliers DIY écologiques en ville. Comment puis-je m'inscrire pour le prochain atelier sur le jardinage urbain?", correspondantUsername: users[7], date: "01/02/2024", time: "13:16"),
    ChatDetail(isSent: true, message: "Bonjour Aurélien! Super que tu sois intéressée. Tu es officiellement inscrite pour l'atelier de jardinage urbain. Rendez-vous samedi prochain à 14h au parc central. N'oublie pas d'apporter des gants!", correspondantUsername: users[7], date: "01/02/2024", time: "13:32"),
    ChatDetail(isSent: false, message: "Super, merci! 😁", correspondantUsername: users[7], date: "01/02/2024", time: "13:40")
    ]

var chat2: [ChatDetail] = [
ChatDetail(isSent: false, message: "Salut! J'aimerais suggérer un atelier sur la fabrication de produits de nettoyage écologiques. Ça vous intéresserait?", correspondantUsername: users[3], date: "01/02/2024", time: "13:42"),
ChatDetail(isSent: true, message: "Salut Cindie! Excellente idée, merci de la partager. On va travailler sur ça pour le prochain mois. On te tiendra au courant des détails", correspondantUsername: users[3], date: "01/02/2024", time: "13:45"),
ChatDetail(isSent: false, message: "👍", correspondantUsername: users[3], date: "01/02/2024", time: "13:46")
]

var chat3: [ChatDetail] = [
    ChatDetail(isSent: false, message: "Salut la communauté! Il y a un marché local bio ce week-end. Qui serait partant pour s'y retrouver et découvrir de nouvelles initiatives éco-responsables?", correspondantUsername: users[6], date: "01/02/2024", time: "13:52"),
    ChatDetail(isSent: true, message: "Salut Lise! Je suis partante, c'est une excellente idée. On pourrait même organiser une sortie groupée depuis la communauté.", correspondantUsername: users[6], date: "01/02/2024", time: "13:54"),
    ChatDetail(isSent: false, message: "Salut, tu es disponible ce week-end du coup? 😉", correspondantUsername: users[6], date: "01/02/2024", time: "13:55")
    ]
//
//var chat4: [ChatDetail] = [
//    ChatDetail(isSent: false, message: " Salut les écolos! J'ai du mal avec le compostage. Des conseils pour débuter et éviter les odeurs désagréables?", correspondantUsername: users[9], date: "01/02/2024", time: "14:02"),
//    ChatDetail(isSent: true, message: "Salut Julien! Déjà, évite les agrumes et les agrégats trop humides. Opte pour une balance carbone/azote équilibrée. Et n'oublie pas de retourner le compost régulièrement!", correspondantUsername: users[9], date: "01/02/2024", time: "14:03"),
//    ChatDetail(isSent: false, message: "Ça marche! 👏", correspondantUsername: users[9], date: "01/02/2024", time: "14:04")
//]
