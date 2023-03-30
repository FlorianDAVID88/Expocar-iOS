//
//  HomeView.swift
//  Expocar_iOS
//
//  Created by user234243 on 3/1/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ZStack {
                    Image("background_home")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Rectangle().offset(y: -70))
                    
                    VStack(spacing: 10) {
                        Text("Franc-comtois Motor Show")
                            .font(.custom("evildead", size: 22))
                            .foregroundColor(.white)
                            .background(Color("green_expocar"))
                        
                        Text("1st edition : 9 - 15 January 2023")
                            .font(.custom("evildead", size: 16))
                            .foregroundColor(.white)
                            .background(Color("green_expocar"))
                    }
                }
                SliderBarView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
