//
//  SwiftScrollView.swift
//  Basic
//
//  Created by 김민 on 2023/07/11.
//

import SwiftUI

struct SwiftScrollView: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 300)
//                }
//            }
//        }

        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white )
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct SwiftScrollView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftScrollView()
    }
}
