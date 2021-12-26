//
//  SecondsConverter.swift
//  AxoraSoft
//
//  Created by Ujin Artuhovich on 27.12.21.
//

import Foundation

class SecondsConverter {
    static func convertToHSMFormat(seconds: Int) -> String {
        let (m, s) = ((seconds % 3600) / 60, (seconds % 3600) % 60)
        
        if seconds < 60 {
            return "\(s)s"
        } else {
            return "\(m)m \(s)s"
        }
    }
}
