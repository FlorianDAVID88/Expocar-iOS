//
//  MapView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import SwiftUI

struct MapView: View {
    @EnvironmentObject var viewModel: ExpocarViewModel
    @State var selectedStand: Stand = .none

    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Image("map_svg_background")
                    .resizable()
                
                ForEach(viewModel.stands, id: \.self) { st in
                    if(st != .none) {
                        let width = UIImage(named: st.rawValue)!.size.width / st.ratio
                        let height = UIImage(named: st.rawValue)!.size.height / st.ratio
                        Image("\(st.rawValue)")
                            .resizable()
                            .frame(width: width, height: height)
                            .position(x: st.translation[0] + width/2.0, y: st.translation[1] + height/2.0)
                            .onTapGesture {
                                selectedStand = st
                            }
                    }
                }
            }.aspectRatio(contentMode: .fit)
            
            CreneauMapView(stand: selectedStand).environmentObject(ExpocarViewModel())
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView().environmentObject(ExpocarViewModel())
    }
}
