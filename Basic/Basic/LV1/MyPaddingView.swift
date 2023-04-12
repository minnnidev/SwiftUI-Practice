//
//  MyPaddingView.swift
//  Basic
//
//  Created by 김민 on 2023/04/12.
//

import SwiftUI

// padding: 오브젝트 2개 사이의 공간

struct MyPaddingView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding(.bottom, 100)
                .background(.blue)
                .foregroundColor(.pink)
            Image(systemName: "heart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .background(.blue)
                .foregroundColor(.pink)
                .padding(.leading, 100)
        }
    }
}

struct MyPaddingView_Previews: PreviewProvider {
    static var previews: some View {
        MyPaddingView()
    }
}
