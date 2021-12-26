//
//  ChatView.swift
//  AxoraSoft
//
//  Created by Ujin Artuhovich on 27.12.21.
//
import SwiftUI

struct ChatView: View {
    @ObservedObject var vm: ViewModel
    let timer = CustomTimer()
    
    var body: some View {
        Text("Hello, it's Chat!")
            .onAppear {
                vm.chatTimer.startTimer()
            }
            .onDisappear {
                vm.chatTimer.stopTimer()
            }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(vm: .init())
    }
}
