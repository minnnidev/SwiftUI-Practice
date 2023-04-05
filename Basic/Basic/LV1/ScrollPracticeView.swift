//
//  ContentView.swift
//  Basic
//
//  Created by 김민 on 2023/04/05.
//

import SwiftUI

struct ScrollPracticeView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollPracticeView()
    }
}
