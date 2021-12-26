//
//  ContentView.swift
//  AxoraSoft
//
//  Created by Ujin Artuhovich on 27.12.21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm: ViewModel

    var body: some View {
        NavigationView {
            VStack() {
                Text(
                    "Your application timing staistics about last time -  \(SecondsConverter.convertToHSMFormat(seconds: vm.applicationTimingStaistics))"
                )
                .padding()
                .multilineTextAlignment(.center)
                
                Text(
                    "Your chat timing staistics about last time -  \(SecondsConverter.convertToHSMFormat(seconds: vm.chatTimingStaistics))"
                )
                .padding()
                .multilineTextAlignment(.center)
                
                NavigationLink(
                    destination: ChatView(vm: vm),
                    label: {
                        Text("Chat")
                            .padding()
                    })

                NavigationLink(
                    destination: StatisticsView(vm: vm),
                    label: {
                        Text("Statistics")
                            .padding()
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vm: .init())
    }
}
