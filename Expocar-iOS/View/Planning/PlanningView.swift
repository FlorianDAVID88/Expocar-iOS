//
//  PlanningView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import SwiftUI

struct PlanningView: View {
    @State var selectedDay: Day = .Monday
    @State var selectedStand: Stand = .Stand01
    
    var body: some View {
        VStack {
            DayPlanningView(day: selectedDay, stand: selectedStand)
            Picker("Day", selection: $selectedDay) {
                ForEach(Day.allCases, id: \.self) { d in
                    if d != .none {
                        Text(d.rawValue.prefix(3).uppercased())
                    }
                }
            }.pickerStyle(.segmented)
            
            HStack {
                Text("Stand : ")
                Picker("Stand", selection: $selectedStand) {
                    ForEach(Stand.allCases, id: \.self) { st in
                        if(st != .none) {
                            Text(st.rawValue.suffix(2))
                        }
                    }
                }.pickerStyle(.menu)
            }
        }
    }
}

struct PlanningView_Previews: PreviewProvider {
    static var previews: some View {
        PlanningView()
    }
}
