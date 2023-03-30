//
//  CalendarView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/28/23.
//

import SwiftUI

struct CalendarView: View {
    @Environment(\.calendar) var calendar
    @Environment(\.timeZone) var timeZone
    
    var bounds: PartialRangeFrom<Date> {
        let start = calendar.date(
            from: DateComponents(
                timeZone: timeZone,
                year: 2022,
                month: 6,
                day: 20)
        )!
        
        return start...

    }
    
    @State private var dates: Set<DateComponents> = []

    var body: some View {
        MultiDatePicker("Dates Available", selection: $dates, in: bounds)

            .fixedSize()
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
