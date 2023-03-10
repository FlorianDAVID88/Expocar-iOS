//
//  CreneauMapView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import SwiftUI

struct CreneauMapView: View {
    @EnvironmentObject var viewModel: ExpocarViewModel
    @State var stand: Stand
    
    var body: some View {
        if getColor() == .green {
            let creneau: Creneau = viewModel.getCreneauxFromStand(stand: stand)[0]
            VStack(spacing: 5) {
                ZStack {
                    Rectangle()
                        .background(getColor())
                        .opacity(0.25)
                        .frame(height: 45)
                    
                    let hour = viewModel.validValue(value: Calendar.current.dateComponents([.hour], from: creneau.date).hour)
                    Text("\(hour.debugDescription.count)h  - \(hour.debugDescription.count + 2) H")
                        .font(Font.custom("evildead", size: 18))
                        .multilineTextAlignment(.center)
                }
                ZStack {
                    Rectangle()
                        .background(.gray)
                        .opacity(0.25)
                        .frame(height: 150)
                    
                    VStack(spacing: 15) {
                        HStack(spacing: 50) {
                            Image("\(creneau.provider.societe.rawValue)_logo")
                                .resizable()
                                .frame(width: 50, height: 50)
                            VStack(spacing: 5) {
                                Text("Contractor : \(creneau.provider.societe.rawValue)")
                                Text("\(creneau.provider.surname) \(creneau.provider.name)").foregroundColor(Color("green_expocar"))
                            }
                        }
                        Text("\(creneau.provider.activity.rawValue)")
                        Text("Visit contractor's page").underline().foregroundColor(.blue)
                    }
                    .font(Font.custom("evildead", size: 18))
                    .multilineTextAlignment(.center)
                }
            }
        } else {
            ZStack {
                Rectangle()
                    .background(getColor())
                    .opacity(0.25)
                    .frame(height: 200)
                
                Text(getColor() == .blue
                     ? "Click on a stand to see the current activity taking place"
                     : "There is no activity right now")
                    .font(Font.custom("evildead", size: 18))
                    .multilineTextAlignment(.center)
            }
        }
    }
    
    func getColor() -> Color {
        if(stand == .none) {
            return .blue
        } else if viewModel.getCreneauxFromStand(stand: stand).count == 0 {
            return .red
        } else {
            return .green
        }
    }
}

struct CreneauMapView_Previews: PreviewProvider {
    static var previews: some View {
        CreneauMapView(stand: .Stand9).environmentObject(ExpocarViewModel())
    }
}
