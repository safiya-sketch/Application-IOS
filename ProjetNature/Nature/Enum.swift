//
//  Enum.swift
//  Nature
//
//  Created by apprenant50 on 02/02/2024.
//

import SwiftUI

enum Categories: String, CaseIterable, Identifiable {
    var id: String { return self.rawValue }
    case wasteMin = "Réduction des déchets"
    case upcycling = "Upcycling"
    case urbanGardening = "Jardinage urbain"
    case naturalCosmetics = "Cosmétiques naturels"
    case wellnessPractices = "Pratiques de bien-être"
    case sustainableCooking = "Cuisine eco-responsable"
    case ethicalFashion = "Mode éthique"
    case energySaving = "Économie d'énergie"
}

