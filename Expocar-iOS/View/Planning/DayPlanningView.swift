//
//  DayPlanningView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import SwiftUI

struct DayPlanningView: View {
    @EnvironmentObject var viewModel: ExpocarViewModel
    @State var day: Day
    @State var stand: Stand
    
    var body: some View {
        ZStack {
            Color.green.opacity(0.25)
            VStack(spacing: 10) {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(height: 150)
                Rectangle()
                    .foregroundColor(.white)
                    .frame(height: 150)
                Rectangle()
                    .foregroundColor(.white)
                    .frame(height: 150)
                /*ForEach(viewModel.getCreneauxFromDay(date: Date()), id: \.self.id_creneau) { cr in
                    Rectangle()
                        .foregroundColor(.gray)
                }*/
            }
        }
        .frame(height: 500)
    }
}

struct DayPlanningView_Previews: PreviewProvider {
    static var previews: some View {
        DayPlanningView(day: .Friday, stand: .Stand04).environmentObject(ExpocarViewModel())
    }
}
