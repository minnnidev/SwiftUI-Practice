//
//  MyDividerView.swift
//  Basic
//
//  Created by 김민 on 2023/04/15.
//

import SwiftUI

struct MyDividerView: View {
    // Divider - 구분선
    
    var body: some View {
        VStack {
            Text("Kim")
            Divider()
            Text("Min")
            Spacer()
            HStack {
                Image(systemName: "heart")
                Divider()
                    .frame(width: 5)
                    .background(.red)
                Text("heart")
            }
        }
    }
}

struct MyDividerView_Previews: PreviewProvider {
    static var previews: some View {
        MyDividerView()
    }
}
