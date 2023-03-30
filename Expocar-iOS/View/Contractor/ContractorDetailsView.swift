//
//  ContractorDetailsView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/24/23.
//

import SwiftUI

struct ContractorDetailsView: View {
    @State var provider: User
    @State var values: [String] = ["Write your comment here ...",""]
    
    var body: some View {
        VStack(spacing: 15) {
            ZStack {
                Rectangle()
                    .foregroundColor(.gray.opacity(0.5))
                    .frame(height: 150)
                HStack {
                    VStack(spacing: 15) {
                        Text("\(provider.surname) \(provider.name) (\(provider.societe.rawValue))")
                        HStack {
                            Text("Email :")
                            let url = URL(string: "mailto:\(provider.email)?subject=Expocar".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!
                            Link("\(provider.email)", destination: url)
                        }
                        Text("Activity : \(provider.activity.rawValue)")
                    }
                    .font(Font.custom("evildead", size: 16))
                    .multilineTextAlignment(.leading)
                    
                    Image("\(provider.societe.rawValue)_logo")
                }.padding()
            }
            VStack(spacing: 15) {
                TextEditor(text: $values[0])
                    .frame(height: 150)
                    .padding()
                    .border(Color.gray)
                
                HStack {
                    Text("Username : ")
                    TextField("Name", text: $values[1])
                        .padding(.horizontal)
                        .frame(height: 55)
                        .background(Color(.systemGray4))
                        .cornerRadius(10)
                }.padding()
                
                Button {
                    
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
    }
}

struct ContractorDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContractorDetailsView(provider: User.allCases[1])
    }
}
