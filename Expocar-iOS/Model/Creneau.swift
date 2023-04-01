//
//  Creneau.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import Foundation

struct Creneau {
    var id_creneau = UUID()
    var provider: User
    var stand: Stand
    var day: Day
    var hour: Int
    
    static var allCases = [
        // jour 1
        Creneau(provider: getProviderNum(num: 1), stand: .Stand07, day: .Monday, hour: 14),
        Creneau(provider: getProviderNum(num: 1), stand: .Stand06, day: .Monday, hour: 10),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand07, day: .Monday, hour: 16),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand08, day: .Monday, hour: 18),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand03, day: .Monday, hour: 10),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand01, day: .Monday, hour: 12),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand01, day: .Monday, hour: 16),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand07, day: .Monday, hour: 18),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand10, day: .Monday, hour: 12),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand08, day: .Monday, hour: 14),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand03, day: .Monday, hour: 16),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand06, day: .Monday, hour: 14),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand08, day: .Monday, hour: 10),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand09, day: .Monday, hour: 18),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand05, day: .Monday, hour: 14),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand08, day: .Monday, hour: 14),
        Creneau(provider: getProviderNum(num: 9), stand: .Stand09, day: .Monday, hour: 12),
        Creneau(provider: getProviderNum(num: 9), stand: .Stand02, day: .Monday, hour: 8),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand08, day: .Monday, hour: 12),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand01, day: .Monday, hour: 8),
        
        // jour 2
        Creneau(provider: getProviderNum(num: 1), stand: .Stand07, day: .Tuesday, hour: 14),
        Creneau(provider: getProviderNum(num: 1), stand: .Stand06, day: .Tuesday, hour: 10),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand07, day: .Tuesday, hour: 16),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand08, day: .Tuesday, hour: 18),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand03, day: .Tuesday, hour: 10),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand01, day: .Tuesday, hour: 12),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand01, day: .Tuesday, hour: 16),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand07, day: .Tuesday, hour: 18),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand10, day: .Tuesday, hour: 12),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand08, day: .Tuesday, hour: 14),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand03, day: .Tuesday, hour: 16),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand06, day: .Tuesday, hour: 14),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand08, day: .Tuesday, hour: 10),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand09, day: .Tuesday, hour: 18),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand05, day: .Tuesday, hour: 14),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand08, day: .Tuesday, hour: 14),
        Creneau(provider: getProviderNum(num: 9), stand: .Stand09, day: .Tuesday, hour: 12),
        Creneau(provider: getProviderNum(num: 9), stand: .Stand02, day: .Tuesday, hour: 12),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand08, day: .Tuesday, hour: 12),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand01, day: .Tuesday, hour: 08),
        
        //jour 3
        Creneau(provider: getProviderNum(num: 1), stand: .Stand10, day: .Wednesday, hour: 14),
        Creneau(provider: getProviderNum(num: 1), stand: .Stand08, day: .Wednesday, hour: 10),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand07, day: .Wednesday, hour: 16),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand08, day: .Wednesday, hour: 18),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand03, day: .Wednesday, hour: 10),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand06, day: .Wednesday, hour: 12),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand10, day: .Wednesday, hour: 16),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand05, day: .Wednesday, hour: 18),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand04, day: .Wednesday, hour: 12),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand02, day: .Wednesday, hour: 14),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand02, day: .Wednesday, hour: 10),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand06, day: .Wednesday, hour: 14),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand07, day: .Wednesday, hour: 10),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand09, day: .Wednesday, hour: 18),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand03, day: .Wednesday, hour: 14),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand07, day: .Wednesday, hour: 14),
        Creneau(provider: getProviderNum(num: 9), stand: .Stand03, day: .Wednesday, hour: 16),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand08, day: .Wednesday, hour: 10),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand01, day: .Wednesday, hour: 18),

        // jour 4
        Creneau(provider: getProviderNum(num: 1), stand: .Stand01, day: .Thursday, hour: 08),
        Creneau(provider: getProviderNum(num: 1), stand: .Stand02, day: .Thursday, hour: 10),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand02, day: .Thursday, hour: 16),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand03, day: .Thursday, hour: 18),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand09, day: .Thursday, hour: 10),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand08, day: .Thursday, hour: 12),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand02, day: .Thursday, hour: 16),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand05, day: .Thursday, hour: 18),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand10, day: .Thursday, hour: 10),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand07, day: .Thursday, hour: 14),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand02, day: .Thursday, hour: 14),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand03, day: .Thursday, hour: 16),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand05, day: .Thursday, hour: 10),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand10, day: .Thursday, hour: 18),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand10, day: .Thursday, hour: 10),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand07, day: .Thursday, hour: 14),
        Creneau(provider: getProviderNum(num: 9), stand: .Stand07, day: .Thursday, hour: 08),
        Creneau(provider: getProviderNum(num: 9), stand: .Stand09, day: .Thursday, hour: 14),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand01, day: .Thursday, hour: 10),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand01, day: .Thursday, hour: 18),

        // jour 5
        Creneau(provider: getProviderNum(num: 1), stand: .Stand10, day: .Friday, hour: 08),
        Creneau(provider: getProviderNum(num: 1), stand: .Stand03, day: .Friday, hour: 10),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand07, day: .Friday, hour: 16),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand03, day: .Friday, hour: 18),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand09, day: .Friday, hour: 10),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand02, day: .Friday, hour: 12),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand02, day: .Friday, hour: 16),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand06, day: .Friday, hour: 18),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand10, day: .Friday, hour: 10),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand02, day: .Friday, hour: 14),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand08, day: .Friday, hour: 14),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand03, day: .Friday, hour: 14),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand02, day: .Friday, hour: 10),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand05, day: .Friday, hour: 18),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand08, day: .Friday, hour: 10),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand07, day: .Friday, hour: 14),
        Creneau(provider: getProviderNum(num: 9), stand: .Stand07, day: .Friday, hour: 08),
        Creneau(provider: getProviderNum(num: 9), stand: .Stand09, day: .Friday, hour: 14),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand05, day: .Friday, hour: 10),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand06, day: .Friday, hour: 18),

        // jour 6
        Creneau(provider: getProviderNum(num: 1), stand: .Stand01, day: .Saturday, hour: 08),
        Creneau(provider: getProviderNum(num: 1), stand: .Stand02, day: .Saturday, hour: 10),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand02, day: .Saturday, hour: 16),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand03, day: .Saturday, hour: 18),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand09, day: .Saturday, hour: 10),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand08, day: .Saturday, hour: 12),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand02, day: .Saturday, hour: 16),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand08, day: .Saturday, hour: 18),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand10, day: .Saturday, hour: 10),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand07, day: .Saturday, hour: 14),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand02, day: .Saturday, hour: 14),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand03, day: .Saturday, hour: 14),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand05, day: .Saturday, hour: 10),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand10, day: .Saturday, hour: 18),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand10, day: .Saturday, hour: 10),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand05, day: .Saturday, hour: 14),
        Creneau(provider: getProviderNum(num: 9), stand: .Stand07, day: .Saturday, hour: 08),
        Creneau(provider: getProviderNum(num: 9), stand: .Stand09, day: .Saturday, hour: 14),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand01, day: .Saturday, hour: 10),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand03, day: .Saturday, hour: 18),

        // jour 7
        Creneau(provider: getProviderNum(num: 1), stand: .Stand07, day: .Sunday, hour: 14),
        Creneau(provider: getProviderNum(num: 1), stand: .Stand06, day: .Sunday, hour: 10),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand07, day: .Sunday, hour: 16),
        Creneau(provider: getProviderNum(num: 2), stand: .Stand08, day: .Sunday, hour: 18),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand03, day: .Sunday, hour: 10),
        Creneau(provider: getProviderNum(num: 3), stand: .Stand01, day: .Sunday, hour: 12),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand01, day: .Sunday, hour: 16),
        Creneau(provider: getProviderNum(num: 4), stand: .Stand07, day: .Sunday, hour: 18),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand10, day: .Sunday, hour: 12),
        Creneau(provider: getProviderNum(num: 5), stand: .Stand08, day: .Sunday, hour: 14),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand03, day: .Sunday, hour: 16),
        Creneau(provider: getProviderNum(num: 6), stand: .Stand06, day: .Sunday, hour: 14),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand08, day: .Sunday, hour: 10),
        Creneau(provider: getProviderNum(num: 7), stand: .Stand09, day: .Sunday, hour: 18),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand05, day: .Sunday, hour: 14),
        Creneau(provider: getProviderNum(num: 8), stand: .Stand08, day: .Sunday, hour: 14),
        Creneau(provider: getProviderNum(num: 9), stand: .Stand09, day: .Sunday, hour: 12),
        Creneau(provider: getProviderNum(num: 9), stand: .Stand02, day: .Sunday, hour: 12),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand08, day: .Sunday, hour: 12),
        Creneau(provider: getProviderNum(num: 10), stand: .Stand01, day: .Sunday, hour: 08)
        
    ]
    
    
}

func getProviderNum(num: Int) -> User {
    var providers: [User] = []
    for user in User.allCases {
        if user.type_user == .Provider {
            providers.append(user)
        }
    }
    
    return providers[num - 1]
}
