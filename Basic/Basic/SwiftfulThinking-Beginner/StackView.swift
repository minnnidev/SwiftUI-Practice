//
//  StackView.swift
//  Basic
//
//  Created by 김민 on 2023/07/11.
//

import SwiftUI

struct StackView: View {
    var body: some View {
//        VStack(alignment: .leading, spacing: 0) { // 간격을 원하지 않으면 0
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200)
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150, height: 150)
//
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//        }
//        VStack {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100, height: 100)
//
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//        }

//        ZStack {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack(alignment: .leading, spacing: 30) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100)
//
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width: 75, height: 75)
//
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(.white)
//            }
//            .background(.black)
//        }

//        VStack(alignment: .center) {
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//
//            Text("Items in your cart!")
//                .font(.caption)
//                .foregroundColor(.gray)
//        }

        // ZStack은 background와 overlay와 같이 동작한다!
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)

                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }

            Text("1") // 뒤 또는 앞에 추가할 레이어가 하나뿐이라면 편할 것
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
