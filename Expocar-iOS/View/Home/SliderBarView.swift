//
//  SliderBarView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/9/23.
//

import SwiftUI

struct SliderBarView: View {
    @State var isClicked: Bool = false
    
    var body: some View {
        VStack(spacing: 25) {
            Text("Activities")
                .font(Font.custom("evildead", size: 28))
                .foregroundColor(Color("green_expocar"))
                        
            TabView {
                ForEach(Activity.allCases, id: \.self) { act in
                    if act != .none {
                        Button {
                            isClicked.toggle()
                        } label: {
                            ZStack {
                                Image("\(act)")
                                    .resizable()
                                    .scaledToFit()
                                    .tabItem {
                                        Text("\(act.rawValue)")
                                    }
                                Text("\(act.rawValue)")
                                    .padding()
                                    .background(.white.opacity(0.75))
                                    .font(Font.custom("evildead", size: 20))
                                    .foregroundColor(Color("green_expocar"))
                            }.alert(isPresented: $isClicked) {
                                Alert(title: Text("\(act.details)"))
                            }
                        }
                    }
                }
            }
            .frame(height: 262)
            .tabViewStyle(.page)
        }
    }
}

struct SliderBarView_Previews: PreviewProvider {
    static var previews: some View {
        SliderBarView()
    }
}
