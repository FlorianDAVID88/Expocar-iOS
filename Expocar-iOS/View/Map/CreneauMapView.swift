//
//  CreneauMapView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import SwiftUI

struct CreneauMapView: View {
    @State var creneau: Creneau
    
    var body: some View {
        ZStack {
            let stand = creneau.stand
            VStack(spacing: 5) {
                ZStack {
                    Rectangle()
                        .background(.green)
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
        }
    }
}

struct CreneauMapView_Previews: PreviewProvider {
    static var previews: some View {
        CreneauMapView(creneau: Creneau(provider: getProviderNum(num: 1), stand: .Stand07, day: .Monday, hour: 14))
            .environmentObject(ExpocarViewModel())
    }
}
