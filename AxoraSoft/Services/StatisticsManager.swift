//
//  StatisticsManager.swift
//  AxoraSoft
//
//  Created by Ujin Artuhovich on 27.12.21.
//

import Foundation
//MARK: class for saving to user defaults
final class StatisticsManager {
    private var defaults: UserDefaults
    
    init() {
        defaults = UserDefaults.standard
    }
    
    func saveStatistics(with timing: Int, for key: UserDefaultsKeys) {
        defaults.set(timing, forKey: key.rawValue)
    }
    
    func getStatistics(for key: UserDefaultsKeys) -> Int {
        return defaults.integer(forKey: key.rawValue)
    }
}
