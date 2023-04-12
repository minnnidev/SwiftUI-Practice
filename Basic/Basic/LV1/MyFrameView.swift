//
//  MyFrame.swift
//  Basic
//
//  Created by 김민 on 2023/04/12.
//

import SwiftUI

struct MyFrameView: View {
    var body: some View {
        Image(systemName: "bolt")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200, alignment: .trailing)
            .background(.green)
    }
}

struct MyFrame_Previews: PreviewProvider {
    static var previews: some View {
        MyFrameView()
    }
}
