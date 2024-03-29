//
//  MapView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import SwiftUI

struct MapView: View {
    @EnvironmentObject var viewModel: ExpocarViewModel

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                ZStack {
                    Image("map_svg_background")
                        .resizable()
                    
                    ForEach(Stand.allCases, id: \.self) { st in
                        if(st != .none) {
                            let width = UIImage(named: st.rawValue)!.size.width / st.ratio
                            let height = UIImage(named: st.rawValue)!.size.height / st.ratio
                            Image("\(st.rawValue)")
                                .resizable()
                                .frame(width: width, height: height)
                                .position(x: st.translation[0] + width/2.0, y: st.translation[1] + height/2.0)
                                .onTapGesture {
                                    viewModel.selectedStand = st
                                    
                                    let day: Day = viewModel.getDayFromDateNow()
                                    let hour = viewModel.getHourFromDateNow()
                                    let creneaux: [Creneau] = viewModel.getCreneauxFromStandAndDay(stand: st, day: day, hour: hour)
                                    if creneaux.count > 0 {
                                        viewModel.selectedProvider = creneaux[0].provider
                                    }
                                }
                        }
                    }
                }.aspectRatio(contentMode: .fit)
                
                StandCreneauMapView()
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView().environmentObject(ExpocarViewModel())
    }
}
