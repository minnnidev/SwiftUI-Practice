//
//  FrameView.swift
//  Basic
//
//  Created by 김민 on 2023/07/10.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        Text("Hello, World!")
            .background(.green)
//            .frame(width: 300, height: 300, alignment: .leading)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(.red)
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
