//
//  CustomTimer.swift
//  AxoraSoft
//
//  Created by Ujin Artuhovich on 27.12.21.
//

import Foundation

final class CustomTimer {
    private var currentTiming = 0
    private var timer: Timer
    
    init() {
        self.timer = Timer()
    }
    
    public var currentTimingGetter: Int {
        return currentTiming
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] time in
            guard let self = self else { return }
            
            self.currentTiming += 1
        }
    }
    
    func stopTimer() {
        timer.invalidate()
    }
}
