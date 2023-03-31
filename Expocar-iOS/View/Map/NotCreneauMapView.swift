//
//  NotCreneauMapView.swift
//  Expocar
//
//  Created by user234243 on 3/31/23.
//

import SwiftUI

struct NotCreneauMapView: View {
    let stand: Stand
    
    var body: some View {
        VStack {
            let color: Color = stand == .none ? .blue : .red
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

struct NotCreneauMapView_Previews: PreviewProvider {
    static var previews: some View {
        NotCreneauMapView(stand: .Stand07)
    }
}
