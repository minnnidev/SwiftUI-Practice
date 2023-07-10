//
//  PaddingAndSpacerView.swift
//  Basic
//
//  Created by 김민 on 2023/07/11.
//

import SwiftUI

struct PaddingView: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
////            .frame(width: 100, height: 100) // frame을 하드코딩하는 것은 dynamic하게 대응할 수 없음
//            .background(.yellow)
////            .padding()
//            .padding(.all, 10)
//            .padding(.leading, 20) // padding도 stack으로 쌓을 수 있다
//            .background(.blue)

//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(.red)
//            .padding(.leading, 20)

        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)

            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3),
                        radius: 10,
                        x: 0,
                        y: 10)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingView_Previews: PreviewProvider {
    static var previews: some View {
        PaddingView()
    }
}
