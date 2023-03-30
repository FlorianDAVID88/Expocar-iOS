//
//  ExpocarViewModel.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import Foundation

class ExpocarViewModel: ObservableObject {
    @Published var selectedStand: Stand = .none
    @Published var crenaux: [Creneau] = []
    
    init() {
        setCrenaux()
    }
    
    func setCrenaux() {
        crenaux.append(contentsOf: Creneau.allCases)
    }
    
    func getCreneauxFromStand(stand: Stand) -> [Creneau] {
        var creneaux: [Creneau] = []
        for cr in crenaux {
            if cr.stand == stand {
                creneaux.append(cr)
            }
        }
        return creneaux
    }
    
    func getCreneauxFromDay(day: Day) -> [Creneau] {
        var creneaux: [Creneau] = []
        for cr in crenaux {
            if cr.day == day {
                creneaux.append(cr)
            }
        }
        return creneaux
    }
    
    func validValue(value: Optional<Any>) -> Optional<Any> {
        guard let valueReturn = value else {
            fatalError("Invalid")
        }
        return valueReturn
    }
}
