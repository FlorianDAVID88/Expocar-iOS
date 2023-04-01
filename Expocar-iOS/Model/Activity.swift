//
//  Activity.swift
//  Expocar
//
//  Created by user234243 on 3/30/23.
//

import Foundation

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
