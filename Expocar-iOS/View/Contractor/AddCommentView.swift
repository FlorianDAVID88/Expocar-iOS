//
//  AddCommentView.swift
//  Expocar
//
//  Created by user234243 on 3/31/23.
//

import SwiftUI

struct AddCommentView: View {
    @EnvironmentObject var viewModel: ExpocarViewModel
    @Environment(\.presentationMode) var presentationMode
    @State var comment = ""
    @State private var grade: Int = 0
    
    var body: some View {
        VStack(spacing: 15) {
            let provider = viewModel.selectedProvider
            Text("New comment for \(provider.surname) \(provider.name)")
                .padding()
                .font(Font.custom("evildead", size: 28))
                .multilineTextAlignment(.center)
            
            VStack {
                Text("Comment : ")
                TextEditor(text: $comment)
                    .frame(height: 150)
                    .padding()
                    .border(Color.gray)
            }
            .font(Font.custom("evildead", size: 12))
            
            HStack {
                Text("Grade : ")
                    .font(Font.custom("evildead", size: 12))
                HStack {
                    ForEach(1...5, id: \.self) { i in
                        Button {
                            grade = i
                        } label: {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(i <= grade ? .yellow : .gray)
                        }
                    }
                }
            }.padding()
            
            Button {
                submitGrade()
            } label: {
                Text("Submit")
                    .foregroundColor(.white)
                    .font(Font.custom("evildead", size: 16))
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
    
    func submitGrade() {
        viewModel.addComment(comment: comment, grade: grade)
        self.presentationMode.wrappedValue.dismiss()
    }
}

struct AddCommentView_Previews: PreviewProvider {
    static var previews: some View {
        AddCommentView().environmentObject(ExpocarViewModel())
    }
}
