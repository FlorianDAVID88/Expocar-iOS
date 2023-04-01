//
//  Stand.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import Foundation

enum Stand: String, CaseIterable {
    case Stand01, Stand02, Stand03, Stand04, Stand05, Stand06, Stand07, Stand08, Stand09, Stand10, Stand11, none

    var ratio: Double { return 800.0/393.0 }

    var translation: [Double] {
        switch self {
            case .Stand01: return [72, 0.402]
            case .Stand02: return [131, 60]
            case .Stand03: return [27, 92]
            case .Stand04: return [123, 162]
            case .Stand05: return [199, 136]
            case .Stand06: return [58, 250]
            case .Stand07: return [30, 322]
            case .Stand08: return [198, 288]
            case .Stand09: return [320, 305]
            case .Stand10: return [254, 347]
            case .Stand11: return [310, 335]
            case .none: return [0.0, 0.0]
        }
    }
}
