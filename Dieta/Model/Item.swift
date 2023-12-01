//
//  Item.swift
//  Dieta
//
//  Created by Marcelo de Araújo on 01/12/2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    @Attribute(.unique)
    let id: UUID = UUID()
    var name: String
    var calories: Double
    var protien: Double
    var carbs: Double
    var fat: Double
    var timestamp: Date

    init(name: String, calories: Double, protien: Double, carbs: Double, fat: Double, timestamp: Date) {
        self.name = name
        self.calories = calories
        self.protien = protien
        self.carbs = carbs
        self.fat = fat
        self.timestamp = timestamp
    }
}

