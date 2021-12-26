//
//  AxoraSoftApp.swift
//  AxoraSoft
//
//  Created by Ujin Artuhovich on 27.12.21.
//

import SwiftUI

@main
struct AxoraSoftApp: App {
    @StateObject var vm: ViewModel = .init()
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView(vm: vm)
                .onAppear {
                    vm.applicationTimer.startTimer()
                }
            //MARK: track application lifecycle
                .onChange(of: scenePhase) { newScenePhase in
                    switch newScenePhase {
                    case .active:
                        print("App is active")
                    case .inactive:
                        vm.saveTimingStaistics()
                    case .background:
                        print("App is in background")
                    @unknown default:
                        print("unexpected new value.")
                    }
                }
        }
    }
}
