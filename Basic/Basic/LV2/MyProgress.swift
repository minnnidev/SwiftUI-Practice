//
//  MyProgress.swift
//  Basic
//
//  Created by 김민 on 2023/04/18.
//

import SwiftUI

struct MyProgress: View {
    @State var progress: Double = 0
    var body: some View {
        VStack {
            ProgressView("Loading...", value: progress, total: 100)
            ProgressView()
                .tint(.orange)
            Button {
                progress += 5
            } label: {
                Text("up 5!")
            }
        }
        .padding()
    }
}

struct MyProgress_Previews: PreviewProvider {
    static var previews: some View {
        MyProgress()
    }
}
