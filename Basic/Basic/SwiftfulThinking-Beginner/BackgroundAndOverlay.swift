//
//  BackgroundAndOverlay.swift
//  Basic
//
//  Created by 김민 on 2023/07/10.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(
////                .red
////                LinearGradient(gradient: Gradient(colors: [.red, .blue]),
////                               startPoint: .leading,
////                               endPoint: .trailing)
//                Circle()
//                    .fill(
//                        LinearGradient(gradient: Gradient(colors: [.red, .blue]),
//                                       startPoint: .leading,
//                                       endPoint: .trailing)
//                    )
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(gradient: Gradient(colors: [.blue, .red]),
//                                       startPoint: .leading,
//                                       endPoint: .trailing)
//                    )
//                    .frame(width: 120, height: 120, alignment: .center)
//            )

//        Circle()
//            .fill(.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 110, height: 110)
//            )

//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50),
//                alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150),
//                alignment: .bottomTrailing
//            )

        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [.purple, .blue]),
                                       startPoint: .leading,
                                       endPoint: .trailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .purple.opacity(0.5), radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: .purple.opacity(0.5), radius: 10, x: 5, y: 5)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundAndOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlay()
    }
}
