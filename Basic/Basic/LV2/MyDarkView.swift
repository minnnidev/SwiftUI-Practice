//
//  MyDarkView.swift
//  Basic
//
//  Created by 김민 on 2023/04/15.
//

import SwiftUI

struct MyDarkView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color("MinColor"))
        // 다크모드 라이트모드 - 한 색상으로 지원 가능, 색상 2개 안 만들어두 댐!
    }
}

struct MyDarkView_Previews: PreviewProvider {
    static var previews: some View {
        MyDarkView()
    }
}
