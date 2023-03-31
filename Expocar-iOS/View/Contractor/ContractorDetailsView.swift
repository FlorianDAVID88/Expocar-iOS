//
//  ContractorDetailsView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/24/23.
//

import SwiftUI

struct ContractorDetailsView: View {
    @EnvironmentObject var viewModel: ExpocarViewModel    
    @State var provider: User
    
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
            
            
            HStack {
                Button {
                } label: {
                    NavigationLink(destination: AddCommentView()) {
                        Text("Add comment")
                            .foregroundColor(.white)
                            .font(Font.custom("evildead", size: 16))
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                            .padding()
                    }
                }
                //if viewModel.selectedProvider.comments.count > 0 {
                    Button {
                    } label: {
                        NavigationLink(destination: AllCommentsView(provider: provider)) {
                            Text("View all comments")
                                .foregroundColor(.white)
                                .font(Font.custom("evildead", size: 16))
                                .frame(height: 55)
                                .frame(maxWidth: .infinity)
                                .background(Color.accentColor)
                                .cornerRadius(10)
                                .padding()
                        }
                    }
                //}
            }
        }
    }
}

struct ContractorDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContractorDetailsView(provider: User.allCases[1]).environmentObject(ExpocarViewModel())
    }
}
