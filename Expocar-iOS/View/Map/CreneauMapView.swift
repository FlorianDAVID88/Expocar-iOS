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
                    
                    let hour = creneau.hour
                    Text("\(stand.rawValue) : \(hour)h  - \(hour + 2)h")
                        .font(Font.custom("evildead", size: 18))
                        .multilineTextAlignment(.center)
                }
                ZStack {
                    Rectangle()
                        .background(.gray)
                        .opacity(0.25)
                        .frame(height: 150)
                    
                    VStack(spacing: 10) {
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
                        Button {
                        } label: {
                            NavigationLink(destination: ContractorDetailsView(provider: creneau.provider)) {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.blue)
                                        .frame(width: 250, height: 30)
                                    Text("Visit contractor's page").foregroundColor(.white)
                                }
                            }
                        }
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
        CreneauMapView(stand: .Stand10).environmentObject(ExpocarViewModel())
    }
}
