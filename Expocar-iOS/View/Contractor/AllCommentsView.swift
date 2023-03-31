//
//  AllCommentsView.swift
//  Expocar
//
//  Created by user234243 on 3/31/23.
//

import SwiftUI

struct AllCommentsView: View {
    @EnvironmentObject var viewModel: ExpocarViewModel
    
    var body: some View {
        VStack {
            let provider = viewModel.selectedProvider
            Text("All comments for \(provider.surname) \(provider.name)")
                .padding()
                .font(Font.custom("evildead", size: 28))
                .multilineTextAlignment(.center)
            ForEach(provider.comments, id: \.self.id_comment) { comm in
                ZStack {
                    Rectangle()
                        .foregroundColor(.gray.opacity(0.5))
                        .frame(height: 150)
                    HStack(spacing: 60) {
                        Text("\(comm.content_comment)")
                        HStack {
                            ForEach(1...5, id: \.self) { i in
                                Image(systemName: "star.fill")
                                    .foregroundColor(i <= comm.note ? .yellow : .gray)
                            }
                        }
                    }.padding()
                        .font(Font.custom("evildead", size: 20))
                        .multilineTextAlignment(.leading)
                }
            }
        }
    }
}

struct AllCommentsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCommentsView().environmentObject(ExpocarViewModel())
    }
}
