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
        ScrollView {
            VStack {
                let provider = viewModel.selectedProvider
                Text("All comments for \(provider.surname) \(provider.name)")
                    .padding()
                    .font(Font.custom("evildead", size: 28))
                    .multilineTextAlignment(.center)
                
                ForEach(provider.comments, id: \.self.id_comment) { comm in
                    CommentView(comment: comm)
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
