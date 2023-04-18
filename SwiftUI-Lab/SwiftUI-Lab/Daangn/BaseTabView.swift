//
//  TabView.swift
//  SwiftUI-Lab
//
//  Created by 김민 on 2023/04/17.
//

import SwiftUI

struct BaseTabView: View {
    var body: some View {
        TabView {
            DaangnHomeView()
                .tabItem {
                    Text("홈")
                    Image(systemName: "house")
                }
            DaangnTownLifeView()
                .tabItem {
                    Text("동네생활")
                    Image(systemName: "building.2")
                }
            DaangnNearMeView()
                .tabItem {
                    Text("내 근처")
                    Image(systemName: "location")
                }
            DaangnChatView()
                .tabItem {
                    Text("채팅")
                    Image(systemName: "bubble.right")
                }
            DaangnMyView()
                .tabItem {
                    Text("나의 당근")
                    Image(systemName: "person")
                }
        }
        .tint(.black)
    }
}

struct BaseTabView_Previews: PreviewProvider {
    static var previews: some View {
        BaseTabView()
    }
}
