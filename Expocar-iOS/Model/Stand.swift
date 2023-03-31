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
            case .Stand02: return [70.114 * ratio, 32.196 * ratio]
            case .Stand03: return [27, 92]
            case .Stand04: return [123, 162]
            case .Stand05: return [198, 135]
            case .Stand06: return [58, 250]
            case .Stand07: return [30, 322]
            case .Stand08: return [198, 288]
            case .Stand09: return [320, 305]
            case .Stand10: return [255, 355]
            case .Stand11: return [310, 335]
            case .none: return [0.0, 0.0]//2.04
        }
    }
}

enum Activity: String, CaseIterable {
    case none = ""
    case Conventions
    case Races
    case Autographs
    case Tuning
    
    var details: String {
        switch self {
            case .Conventions: return "Our conventions gather contractors who represent the leaders of tomorrow's technology. Attend to those conventions by booking a reservation. Our team will receive you well!"
            case .Races: return "See races that take place on the circuit next our stands. The competitions between our drivers happen once a day."
            case .Autographs: return "You can meet the pilots to get an autograph and ask them your question !"
            case .Tuning: return "See professionals customize cars. Their skills can also help customize your car."
            default: return ""
        }
    }
}
