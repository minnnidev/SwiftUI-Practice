//
//  ContentView.swift
//  Basic
//
//  Created by 김민 on 2023/04/05.
//

import SwiftUI

struct MyScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Text("1")
                    .frame(width: 300, height: 500)
                    .background(.red)
                Text("2")
                    .frame(width: 300, height: 500)
                    .background(.orange)
                Text("3")
                    .frame(width: 300, height: 500)
                    .background(.yellow)
            }
        }
        .background(.black)
    }
}

struct MyScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollView()
    }
}
