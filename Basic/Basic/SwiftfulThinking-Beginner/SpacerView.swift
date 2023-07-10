//
//  SpacerView.swift
//  Basic
//
//  Created by 김민 on 2023/07/11.
//

import SwiftUI

/*
동일한 스택 내에 여러 Spacer가 있는 경우 모든 Spacer의 크기가 동일해짐
*/

struct SpacerView: View {
    var body: some View {
//        HStack(spacing: 0) {
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.orange)
//
//            Rectangle()
//                .fill(.black)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.orange)
//        }
//        .padding(.horizontal, 200)

        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(.yellow)
            .padding(.horizontal)
//            .background(.blue)

            Spacer()
                .frame(width: 10)
                .background(.orange)

            Rectangle()
                .frame(height: 55)
        }
        .background(.yellow)
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
