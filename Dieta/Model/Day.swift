//
//  Item.swift
//  Dieta
//
//  Created by Marcelo de Araújo on 01/12/2023.
//

import Foundation
import SwiftData

@Model
final class Day {
    let id: UUID = UUID()
    @Relationship(deleteRule: .cascade)
    var breakfast: [Item]
    @Relationship(deleteRule: .cascade)
    var lunch: [Item]
    @Relationship(deleteRule: .cascade)
    var dinner: [Item]
    @Relationship(deleteRule: .cascade)
    var snack: [Item]
    @Attribute(.unique) var date: String
    var timestamp: Date

    init(breakfast: [Item] = [], lunch: [Item] = [], dinner: [Item] = [], snack: [Item] = [], date: String, timestamp: Date) {
        self.breakfast = breakfast
        self.lunch = lunch
        self.dinner = dinner
        self.snack = snack
        self.date = date
        self.timestamp = timestamp
    }
}
