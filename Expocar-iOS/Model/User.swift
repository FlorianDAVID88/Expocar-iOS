//
//  Users.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import Foundation

enum TypeUser: String, CaseIterable {
    case Organizer
    case Provider
    case Restorer
    case Customer
    case ProviderStandby = "Provider on standby"
}

struct User {
    var id_user = UUID()
    var name: String
    var surname: String
    var email: String
    var activity: Activity
    var type_user: TypeUser
    var societe: Societe
    var comments: [Comment]
    
    static var allCases = [
        User(name: "Mbizi", surname: "Charlene", email: "charlene@gmail.com", activity: .none, type_user: .Organizer, societe: .none, comments: []),
        User(name: "Korbi", surname: "Argjentin", email: "argjentin@gmail.com", activity: .Conventions, type_user: .Provider, societe: .Renault, comments: []),
        User(name: "Reyna", surname: "Samuel", email: "samuel@gmail.com", activity: .Races, type_user: .Provider, societe: .Peugeot, comments: []),
        User(name: "Shotwell", surname: "Marcos", email: "marcos@gmail.com", activity: .Autographs, type_user: .Provider, societe: .Citroen, comments: []),
        User(name: "Bedell", surname: "Heather", email: "heather@gmail.com", activity: .Conventions, type_user: .Provider, societe: .Fiat, comments: []),
        User(name: "Chestnut", surname: "Sandra", email: "sandra@gmail.com", activity: .Tuning, type_user: .Provider, societe: .Ford, comments: []),
        User(name: "Ford", surname: "Angela", email: "angela@gmail.com", activity: .Tuning, type_user: .Provider, societe: .Mercedes, comments: []),
        User(name: "Dupont", surname: "Jean", email: "jeans@gmail.com", activity: .Races, type_user: .Provider, societe: .BMW, comments: []),
        User(name: "Vaillon", surname: "Thomas", email: "tvaillon@gmail.com", activity: .Races, type_user: .Provider, societe: .Audi, comments: []),
        User(name: "Korbi", surname: "Marie", email: "marie@gmail.com", activity: .Races, type_user: .Provider, societe: .Volkswagen, comments: []),
        User(name: "Fruit", surname: "Samuel", email: "fruit@gmail.com", activity: .Races, type_user: .Provider, societe: .Toyota, comments: []),
        User(name: "Tavernier", surname: "Julie", email: "tavernier@gmail.com", activity: .Conventions, type_user: .ProviderStandby, societe: .Renault, comments: []),
        User(name: "Baudel", surname: "Laurent", email: "baudell@gmail.com", activity: .Autographs, type_user: .ProviderStandby, societe: .Fiat, comments: []),
        User(name: "Chess", surname: "Sophie", email: "chess.sophie@gmail.com", activity: .Tuning, type_user: .ProviderStandby, societe: .Ford, comments: []),
        User(name: "Aba", surname: "Angela", email: "aba@gmail.com", activity: .Tuning, type_user: .ProviderStandby, societe: .Mercedes, comments: []),
        User(name: "Overbek", surname: "Bill", email: "billoverbek@gmail.com", activity: .none, type_user: .Customer, societe: .none, comments: []),
        User(name: "Burton", surname: "Tim", email: "timburton@gmail.com", activity: .none, type_user: .Customer, societe: .none, comments: []),
        User(name: "Chirac", surname: "Jacques", email: "jchriac@gmail.com", activity: .none, type_user: .Customer, societe: .none, comments: []),
        User(name: "David", surname: "Florian", email: "fdavid@gmail.com", activity: .none, type_user: .Customer, societe: .none, comments: []),
        User(name: "Bianchi", surname: "Eliot", email: "bianchi@gmail.com", activity: .none, type_user: .Customer, societe: .none, comments: [])
    ]
    
    mutating func addCommentForUser(comment: String, grade: Int) {
        self.comments.append(Comment(content_comment: comment, note: grade))
    }
}
