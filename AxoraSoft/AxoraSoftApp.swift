//
//  AxoraSoftApp.swift
//  AxoraSoft
//
//  Created by Ujin Artuhovich on 27.12.21.
//

import SwiftUI

@main
struct AxoraSoftApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
