//
//  ProfileView.swift
//  WhatIAteToday.Ver1
//
//  Created by Jeewon Koo on 2/25/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            UserDetail(user: users[0]).navigationTitle("Profile")
            VStack{
                Spacer()
                HStack(alignment: .center) {
                    NavigationLink(
                        destination: FeedView()) {
                        Image(systemName: "homekit")
                            .padding(.horizontal, 30.0)
                    }
                    NavigationLink(
                        destination: RecipeView()) {
                        Image(systemName: "square.and.pencil")
                            .padding(.horizontal, 30.0)
                    }
                    NavigationLink(
                        destination: FriendsView()) {
                        Image(systemName: "person.2.fill").padding(.horizontal, 30.0)
                    }
                    Image(systemName: "person.circle")
                        .padding(.horizontal, 30.0)
                    
                    
                }.frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, maxHeight: 80)
                    .background(Color(hue: 0.731, saturation: 0.011, brightness: 0.798))
            }
            .ignoresSafeArea()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
