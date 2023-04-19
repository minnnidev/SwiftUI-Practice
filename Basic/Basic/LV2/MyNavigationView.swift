//
//  MyNavigationView.swift
//  Basic
//
//  Created by 김민 on 2023/04/19.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        // 하지만 iOS16부터 NavigationView는 사라져 버렸따.
        NavigationView {
            NavigationLink(destination: Text("My View1")) {
                ZStack {
                    Color.green
                    Text("상세 페이지로 가기")
                }
            }
            .navigationTitle(Text("홈"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
