//
//  Stand.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import Foundation

enum Stand: String, CaseIterable {
    case Stand1, Stand2, Stand3, Stand4, Stand5, Stand6, Stand7, Stand8, Stand9, Stand10, Stand11, none

    var ratio: Double { return 800.0/393.0 }

    var translation: [Double] {
        switch self {
            case .Stand1: return [38.869 * ratio, 0.197 * ratio]
            case .Stand2: return [70.114 * ratio, 32.196 * ratio]
            case .Stand3: return [14.321 * ratio, 49.211 * ratio]
            case .Stand4: return [66.364 * ratio, 88.024 * ratio]
            case .Stand5: return [107.385 * ratio, 73.615 * ratio]
            case .Stand6: return [31.787 * ratio, 133.941 * ratio]
            case .Stand7: return [15.887 * ratio, 172.868 * ratio]
            case .Stand8: return [107.076 * ratio, 154.571 * ratio]
            case .Stand9: return [172.533 * ratio, 163.338 * ratio]
            case .Stand10: return [136.717 * ratio, 186.726 * ratio]
            case .Stand11: return [167.615 * ratio, 180.865 * ratio]
            case .none: return [0.0, 0.0]
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
