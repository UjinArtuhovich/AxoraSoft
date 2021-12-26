//
//  File.swift
//  AxoraSoft
//
//  Created by Ujin Artuhovich on 27.12.21.
//

import SwiftUI

struct StatisticsView: View {
    @ObservedObject var vm: ViewModel
    
    var body: some View {
        VStack {
            Text("Statistics!")
                .font(.title)

            Text("Time in chat: \(SecondsConverter.convertToHSMFormat(seconds: vm.timeInChat))")
            Text("Time in app: \(SecondsConverter.convertToHSMFormat(seconds: vm.timeInApplication))")
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView(vm: .init())
    }
}
