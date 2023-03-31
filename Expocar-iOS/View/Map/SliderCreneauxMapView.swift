//
//  SliderCreneauxMapView.swift
//  Expocar
//
//  Created by user234243 on 3/30/23.
//

import SwiftUI

struct SliderCreneauxMapView: View {
    @EnvironmentObject var viewModel: ExpocarViewModel
    
    var body: some View {
        let stand: Stand = viewModel.selectedStand
        let day: Day = getDayFromDateNow()
        let hour = getHourFromDateNow()
        let creneaux: [Creneau] = viewModel.getCreneauxFromStandAndDay(stand: stand, day: day, hour: hour)
        
        let color: Color = stand == .none ? .blue
            : (creneaux.count == 0 ? .red : .green)
        
        if color == .green {
            VStack {
                CreneauMapView(creneau: creneaux[0])
            }
        } else {
            VStack {
                ZStack {
                    Rectangle()
                        .background(color)
                        .opacity(0.25)
                        .frame(height: 200)
                    
                    Text(color == .blue
                         ? "Click on a stand to see the current activity taking place"
                         : "There is no activity right now in \(stand.rawValue)")
                    .font(Font.custom("evildead", size: 18))
                    .multilineTextAlignment(.center)
                }
            }
        }
    }
    
    func getDayFromDateNow() -> Day {
        let date = Date.now
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        let dayStr = dateFormatter.string(from: date)
        for d in Day.allCases {
            print("\(d.rawValue) \(dayStr)")
            if d.rawValue == dayStr {
                return d
            }
        }
        return .none
    }
    
    func getHourFromDateNow() -> Int {
        let date = Date.now
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm a"

        let timeString = dateFormatter.string(from: date)
        
        return timeString.contains("PM") ? Int(timeString.prefix(2))! + 12 : Int(timeString.prefix(2))!
    }
}

struct SliderCreneauxMapView_Previews: PreviewProvider {
    static var previews: some View {
        SliderCreneauxMapView().environmentObject(ExpocarViewModel())
    }
}
