//
//  ViewModel.swift
//  AxoraSoft
//
//  Created by Ujin Artuhovich on 27.12.21.
//

import Foundation
import SwiftUI

final class ViewModel: ObservableObject {
    private let statisticsSaver = StatisticsManager()
    
    let applicationTimer = CustomTimer()
    let chatTimer = CustomTimer()
    
    var timeInChat: Int {
        chatTimer.currentTimingGetter // TODO: - put here, in seconds
    }

    var timeInApplication: Int {
        applicationTimer.currentTimingGetter // TODO: - put here, in seconds
    }
    
    var applicationTimingStaistics: Int {
        return statisticsSaver.getStatistics(for: .applicationTiming)
    }
    
    var chatTimingStaistics: Int {
        return statisticsSaver.getStatistics(for: .chatTiming)
    }
    
    public func saveTimingStaistics() {
        statisticsSaver.saveStatistics(with: applicationTimer.currentTimingGetter, for: .applicationTiming)
        statisticsSaver.saveStatistics(with: chatTimer.currentTimingGetter, for: .chatTiming)
    }
}

