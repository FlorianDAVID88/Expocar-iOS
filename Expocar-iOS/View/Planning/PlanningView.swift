//
//  PlanningView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import SwiftUI

struct PlanningView: View {
    @State var selectedDay: Day = .Monday
    
    var body: some View {
        VStack {
            DayPlanningView(day: selectedDay)
            Picker("Day", selection: $selectedDay) {
                ForEach(Day.allCases, id: \.self) { d in
                    Text(d.rawValue.prefix(3).uppercased())
                }
            }.pickerStyle(.segmented)
        }
    }
}

struct PlanningView_Previews: PreviewProvider {
    static var previews: some View {
        PlanningView()
    }
}
