//
//  CommentView.swift
//  Expocar
//
//  Created by user234243 on 4/1/23.
//

import SwiftUI

struct CommentView: View {
    @State var comment: Comment
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray.opacity(0.5))
                .frame(height: 150)
            VStack(spacing: 20) {
                Text("\(comment.content_comment)")
                HStack {
                    ForEach(1...5, id: \.self) { i in
                        Image(systemName: "star.fill")
                            .foregroundColor(i <= comment.note ? .yellow : .gray)
                    }
                }
            }.padding()
                .font(Font.custom("evildead", size: 18))
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(comment: Comment(content_comment: "It was a great pleasure !", note: 4))
    }
}
