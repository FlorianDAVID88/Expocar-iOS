//
//  ContentView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Expocar").font(Font.custom("evildead", size: 32))
            
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "homekit")
                        Text("Home")
                    }
                
                MapView().environmentObject(ExpocarViewModel())
                    .tabItem {
                        Image(systemName: "map")
                        Text("Map")
                    }
                
                PlanningView()
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Planning")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
