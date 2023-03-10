//
//  Creneau.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import Foundation

enum Day: String, CaseIterable {
    case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

struct Creneau {
    var id_creneau = UUID()
    var provider: User
    var stand: Stand
    var date: Date
    
    static var allCases = [
        Creneau(provider: getProviderNum(num: 2), stand: getStandNum(num: 7), date: getDateTime(day: 9, month: 7, year: 2023, hour: 14, min: 00)),
        Creneau(provider: getProviderNum(num: 2), stand: getStandNum(num: 6), date: getDateTime(day: 9, month: 7, year: 2023, hour: 10, min: 00)),
        Creneau(provider: getProviderNum(num: 3), stand: getStandNum(num: 7), date: getDateTime(day: 9, month: 7, year: 2023, hour: 16, min: 00)),
        Creneau(provider: getProviderNum(num: 3), stand: getStandNum(num: 8), date: getDateTime(day: 9, month: 7, year: 2023, hour: 18, min: 00)),
        Creneau(provider: getProviderNum(num: 4), stand: getStandNum(num: 3), date: getDateTime(day: 9, month: 7, year: 2023, hour: 10, min: 00)),
        Creneau(provider: getProviderNum(num: 4), stand: getStandNum(num: 1), date: getDateTime(day: 9, month: 7, year: 2023, hour: 12, min: 00)),
        Creneau(provider: getProviderNum(num: 5), stand: getStandNum(num: 1), date: getDateTime(day: 9, month: 7, year: 2023, hour: 16, min: 00)),
        Creneau(provider: getProviderNum(num: 5), stand: getStandNum(num: 7), date: getDateTime(day: 9, month: 7, year: 2023, hour: 18, min: 00)),
        Creneau(provider: getProviderNum(num: 6), stand: getStandNum(num: 10), date: getDateTime(day: 9, month: 7, year: 2023, hour: 12, min: 00)),
        Creneau(provider: getProviderNum(num: 6), stand: getStandNum(num: 8), date: getDateTime(day: 9, month: 7, year: 2023, hour: 14, min: 00)),
        Creneau(provider: getProviderNum(num: 7), stand: getStandNum(num: 3), date: getDateTime(day: 9, month: 7, year: 2023, hour: 16, min: 00)),
        Creneau(provider: getProviderNum(num: 7), stand: getStandNum(num: 6), date: getDateTime(day: 9, month: 7, year: 2023, hour: 14, min: 00)),
        Creneau(provider: getProviderNum(num: 8), stand: getStandNum(num: 8), date: getDateTime(day: 9, month: 7, year: 2023, hour: 10, min: 00)),
        Creneau(provider: getProviderNum(num: 8), stand: getStandNum(num: 9), date: getDateTime(day: 9, month: 7, year: 2023, hour: 18, min: 00)),
        Creneau(provider: getProviderNum(num: 9), stand: getStandNum(num: 5), date: getDateTime(day: 9, month: 7, year: 2023, hour: 14, min: 00)),
        Creneau(provider: getProviderNum(num: 9), stand: getStandNum(num: 8), date: getDateTime(day: 9, month: 7, year: 2023, hour: 14, min: 00)),
        Creneau(provider: getProviderNum(num: 10), stand: getStandNum(num: 9), date: getDateTime(day: 9, month: 7, year: 2023, hour: 12, min: 00)),
        Creneau(provider: getProviderNum(num: 10), stand: getStandNum(num: 2), date: getDateTime(day: 9, month: 7, year: 2023, hour: 08, min: 00)),
        //Creneau(provider: getProviderNum(num: 11), stand: getStandNum(num: 8), date: getDateTime(day: 9, month: 7, year: 2023, hour: 12, min: 00)),
        //Creneau(provider: getProviderNum(num: 11), stand: getStandNum(num: 1), date: getDateTime(day: 9, month: 7, year: 2023, hour: 08, min: 00))
        /*Creneau(provider: getProviderNum(num: 2), stand: getStandNum(num: 7), date: getDateTime(day: 9, month: 7, year: 2023, hour: 14, min: 00)),
        Creneau(provider: getProviderNum(num: 2), stand: getStandNum(num: 7), date: getDateTime(day: 9, month: 7, year: 2023, hour: 14, min: 00)),
        Creneau(provider: getProviderNum(num: 2), stand: getStandNum(num: 7), date: getDateTime(day: 9, month: 7, year: 2023, hour: 14, min: 00)),
        Creneau(provider: getProviderNum(num: 2), stand: getStandNum(num: 7), date: getDateTime(day: 9, month: 7, year: 2023, hour: 14, min: 00)),
        Creneau(provider: getProviderNum(num: 2), stand: getStandNum(num: 7), date: getDateTime(day: 9, month: 7, year: 2023, hour: 14, min: 00)),
        Creneau(provider: getProviderNum(num: 2), stand: getStandNum(num: 7), date: getDateTime(day: 9, month: 7, year: 2023, hour: 14, min: 00)),
        Creneau(provider: getProviderNum(num: 2), stand: getStandNum(num: 7), date: getDateTime(day: 9, month: 7, year: 2023, hour: 14, min: 00)),*/
    ]
    
    
}
    /*
     INSERT INTO creneaux VALUES
       -- jour 1
        -- jour 2
         -- pres2
         (2,7,'2023-01-10 14:00:00'),
         (2,6,'2023-01-10 10:00:00'),
         -- pres3
         (3,7,'2023-01-10 16:00:00'),
         (3,8,'2023-01-10 18:00:00'),
         -- pres4
         (4,3,'2023-01-10 10:00:00'),
         (4,1,'2023-01-10 12:00:00'),
         -- pres5
         (5,1,'2023-01-10 16:00:00'),
         (5,7,'2023-01-10 18:00:00'),
         -- pres6
         (6,10,'2023-01-10 12:00:00'),
         (6,8,'2023-01-10 14:00:00'),
         -- pres7
         (7,3,'2023-01-10 16:00:00'),
         (7,6,'2023-01-10 14:00:00'),
         -- pres8
         (8,8,'2023-01-10 10:00:00'),
         (8,9,'2023-01-10 18:00:00'),
         -- pres9
         (9,5,'2023-01-10 14:00:00'),
         (9,8,'2023-01-10 14:00:00'),
         -- pres10
         (10,9,'2023-01-10 12:00:00'),
         (10,2,'2023-01-10 12:00:00'),
         -- pres11
         (11,8,'2023-01-10 12:00:00'),
         (11,1,'2023-01-10 08:00:00'),
         -- jour 3
         -- pres2
         (2,10,'2023-01-11 14:00:00'),
         (2,8,'2023-01-11 10:00:00'),
         -- pres3
         (3,7,'2023-01-11 16:00:00'),
         (3,8,'2023-01-11 18:00:00'),
         -- pres4
         (4,3,'2023-01-11 10:00:00'),
         (4,6,'2023-01-11 12:00:00'),
         -- pres5
         (5,10,'2023-01-11 16:00:00'),
         (5,5,'2023-01-11 18:00:00'),
         -- pres6
         (6,4,'2023-01-11 12:00:00'),
         (6,2,'2023-01-11 14:00:00'),
         -- pres7
         (7,2,'2023-01-11 10:00:00'),
         (7,6,'2023-01-11 14:00:00'),
         -- pres8
         (8,7,'2023-01-11 10:00:00'),
         (8,9,'2023-01-11 18:00:00'),
         -- pres9
         (9,3,'2023-01-11 14:00:00'),
         (9,7,'2023-01-11 14:00:00'),
         -- pres10
         (10,3,'2023-01-11 16:00:00'),
         -- pres11
         (11,8,'2023-01-11 10:00:00'),
         (11,1,'2023-01-11 18:00:00'),
         -- jour 4
         -- pres2
         (2,1,'2023-01-12 08:00:00'),
         (2,2,'2023-01-12 10:00:00'),
         -- pres3
         (3,2,'2023-01-12 16:00:00'),
         (3,3,'2023-01-12 18:00:00'),
         -- pres4
         (4,9,'2023-01-12 10:00:00'),
         (4,8,'2023-01-12 12:00:00'),
         -- pres5
         (5,2,'2023-01-12 16:00:00'),
         (5,5,'2023-01-12 18:00:00'),
         -- pres6
         (6,10,'2023-01-12 10:00:00'),
         (6,7,'2023-01-12 14:00:00'),
         -- pres7
         (7,2,'2023-01-12 14:00:00'),
         (7,3,'2023-01-12 16:00:00'),
         -- pres8
         (8,5,'2023-01-12 10:00:00'),
         (8,10,'2023-01-12 18:00:00'),
         -- pres9
         (9,10,'2023-01-12 10:00:00'),
         (9,7,'2023-01-12 14:00:00'),
         -- pres10
         (10,7,'2023-01-12 08:00:00'),
         (10,9,'2023-01-12 14:00:00'),
         -- pres11
         (11,1,'2023-01-12 10:00:00'),
         (11,1,'2023-01-12 18:00:00'),

         -- -- jour 5
         -- pres2
         (2,10,'2023-01-13 08:00:00'),
         (2,3,'2023-01-13 10:00:00'),
         -- pres3
         (3,7,'2023-01-13 16:00:00'),
         (3,3,'2023-01-13 18:00:00'),
         -- pres4
         (4,9,'2023-01-13 10:00:00'),
         (4,2,'2023-01-13 12:00:00'),
         -- pres5
         (5,2,'2023-01-13 16:00:00'),
         (5,6,'2023-01-13 18:00:00'),
         -- pres6
         (6,10,'2023-01-13 10:00:00'),
         (6,2,'2023-01-13 14:00:00'),
         -- pres7
         (7,8,'2023-01-13 14:00:00'),
         (7,3,'2023-01-13 14:00:00'),
         -- pres8
         (8,2,'2023-01-13 10:00:00'),
         (8,5,'2023-01-13 18:00:00'),
         -- pres9
         (9,8,'2023-01-13 10:00:00'),
         (9,7,'2023-01-13 14:00:00'),
         -- pres10
         (10,7,'2023-01-13 08:00:00'),
         (10,9,'2023-01-13 14:00:00'),
         -- pres11
         (11,5,'2023-01-13 10:00:00'),
         (11,6,'2023-01-13 18:00:00'),

         -- -- jour 6

             -- pres2
         (2,1,'2023-01-14 08:00:00'),
         (2,2,'2023-01-14 10:00:00'),
         -- pres3
         (3,2,'2023-01-14 16:00:00'),
         (3,3,'2023-01-14 18:00:00'),
         -- pres4
         (4,9,'2023-01-14 10:00:00'),
         (4,8,'2023-01-14 12:00:00'),
         -- pres5
         (5,2,'2023-01-14 16:00:00'),
         (5,8,'2023-01-14 18:00:00'),
         -- pres6
         (6,10,'2023-01-14 10:00:00'),
         (6,7,'2023-01-14 14:00:00'),
         -- pres7
         (7,2,'2023-01-14 14:00:00'),
         (7,3,'2023-01-14 14:00:00'),
         -- pres8
         (8,5,'2023-01-14 10:00:00'),
         (8,10,'2023-01-14 18:00:00'),
         -- pres9
         (9,10,'2023-01-14 10:00:00'),
         (9,5,'2023-01-14 14:00:00'),
         -- pres10
         (10,7,'2023-01-14 08:00:00'),
         (10,9,'2023-01-14 14:00:00'),
         -- pres11
         (11,1,'2023-01-14 10:00:00'),
         (11,3,'2023-01-14 18:00:00'),

         -- -- jour 7
         -- pres2
         (2,7,'2023-01-15 14:00:00'),
         (2,6,'2023-01-15 10:00:00'),
         -- pres3
         (3,7,'2023-01-15 16:00:00'),
         (3,8,'2023-01-15 18:00:00'),
         -- pres4
         (4,3,'2023-01-15 10:00:00'),
         (4,1,'2023-01-15 12:00:00'),
         -- pres5
         (5,1,'2023-01-15 16:00:00'),
         (5,7,'2023-01-15 18:00:00'),
         -- pres6
         (6,10,'2023-01-15 12:00:00'),
         (6,8,'2023-01-15 14:00:00'),
         -- pres7
         (7,3,'2023-01-15 16:00:00'),
         (7,6,'2023-01-15 14:00:00'),
         -- pres8
         (8,8,'2023-01-15 10:00:00'),
         (8,9,'2023-01-15 18:00:00'),
         -- pres9
         (9,5,'2023-01-15 14:00:00'),
         (9,8,'2023-01-15 14:00:00'),
         -- pres10
         (10,9,'2023-01-15 12:00:00'),
         (10,2,'2023-01-15 12:00:00'),
         -- pres11
         (11,8,'2023-01-15 12:00:00'),
         (11,1,'2023-01-15 08:00:00');*/

func getProviderNum(num: Int) -> User {
    var providers: [User] = []
    for user in User.allCases {
        if user.type_user == .Provider {
            providers.append(user)
        }
    }
    
    return providers[num - 1]
}

func getStandNum(num: Int) -> Stand {
    var stand: Stand = .none
    for st in Stand.allCases {
        if st.rawValue == "Stand\(num)" {
            stand = st
        }
    }
    return stand
}

func getDateTime(day: Int, month: Int, year: Int, hour: Int, min: Int) -> Date {
    let dateString = "\(day)/\(month)/\(year) \(hour):\(min)"
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd/MM/yyyy HH:mm"
        
    guard let date = dateFormatter.date(from: dateString) else {
        fatalError("Invalid date string")
    }
        
    return date
}
