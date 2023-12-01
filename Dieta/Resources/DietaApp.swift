//
//  DietaApp.swift
//  Dieta
//
//  Created by Marcelo de Araújo on 01/12/2023.
//

import SwiftUI
import SwiftData

@main
struct DietaApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Day.self,
            Item.self
            ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
            .modelContainer(sharedModelContainer)
    }
}
