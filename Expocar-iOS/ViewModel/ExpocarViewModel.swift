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
    @Published var selectedProvider: User = User.allCases[0]
    
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
    
    func getCreneauxFromDay(day: Day, hour: Int) -> [Creneau] {
        var creneaux: [Creneau] = []
        for cr in crenaux {
            if cr.day == day && cr.hour == hour {
                creneaux.append(cr)
            }
        }
        return creneaux
    }
    
    func getCreneauxFromStandAndDay(stand: Stand, day: Day, hour: Int) -> [Creneau] {
        var creneaux: [Creneau] = []
        for cr in crenaux {
            let endHour = cr.hour + 2     //On considère un créneau de 2h pour chaque activité effectuée dans un Stand
            if cr.day == day && cr.hour <= hour && endHour > hour && cr.stand == stand {
                creneaux.append(cr)
            }
        }
        return creneaux
    }
    
    func addComment(comment: String, grade: Int) {
        selectedProvider.addCommentForUser(comment: comment, grade: grade)
    }
}
