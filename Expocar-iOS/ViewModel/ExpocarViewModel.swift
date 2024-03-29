//
//  ExpocarViewModel.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import Localize_Swift   // Bilbiothèque pour la traduction instantanée d'un String
import Foundation

class ExpocarViewModel: ObservableObject {
    @Published var selectedStand: Stand = .none
    @Published var selectedProvider: User = User.allCases[0]
    
    func getCreneauxFromStandAndDay(stand: Stand, day: Day, hour: Int) -> [Creneau] {
        var creneaux: [Creneau] = []
        for cr in Creneau.allCases {
            let endHour = cr.hour + 2     // On considère un créneau de 2h pour chaque activité effectuée dans un Stand
            if cr.day == day && cr.hour <= hour && endHour > hour && cr.stand == stand {
                creneaux.append(cr)
            }
        }
        return creneaux
    }
    
    func getDayFromDateNow() -> Day {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let dayStr = dateFormatter.string(from: Date.now).localized()
        for d in Day.allCases {
            if d.rawValue == dayStr {
                return d
            }
        }
        return .none
    }
    
    func getHourFromDateNow() -> Int {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm a"

        let timeString = dateFormatter.string(from: Date.now)
        if Int(timeString.prefix(2))! == 12 {
            return timeString.contains("AM") ? 0 : 12
        }
        
        return timeString.contains("PM") ? Int(timeString.prefix(2))! + 12 : Int(timeString.prefix(2))!
    }
    
    func addComment(comment: String, grade: Int) {
        selectedProvider.addCommentForUser(comment: comment, grade: grade)
    }
}
