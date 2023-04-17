//
//  MyTabView.swift
//  Basic
//
//  Created by 김민 on 2023/04/17.
//

import SwiftUI

struct MyTabView: View {
    
    var body: some View {
        TabView {
            ZStack {
                Color.orange.ignoresSafeArea()
                Text("Item1")
            }
            .tabItem {
//                Label("Item1", systemImage: "bolt")
                Text("Item1")
                Image(systemName: "bolt")
            }
            ZStack {
                Color.red.ignoresSafeArea()
                Text("Item2")
            }
            .tabItem {
                Label("Item2", systemImage: "heart")
            }
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
