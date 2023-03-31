//
//  SliderCreneauxMapView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/25/23.
//

import SwiftUI

struct StandCreneauMapView: View {
    @EnvironmentObject var viewModel: ExpocarViewModel
    
    var body: some View {
        let stand: Stand = viewModel.selectedStand
        let day: Day = viewModel.getDayFromDateNow()
        let hour = viewModel.getHourFromDateNow() - 8
        let creneaux: [Creneau] = viewModel.getCreneauxFromStandAndDay(stand: stand, day: day, hour: hour)
        
        if creneaux.count > 0 {
            CreneauMapView(creneau: creneaux[0])
        } else {
            NotCreneauMapView(stand: stand)
        }
    }
}

struct StandCreneauMapView_Previews: PreviewProvider {
    static var previews: some View {
        StandCreneauMapView().environmentObject(ExpocarViewModel())
    }
}
