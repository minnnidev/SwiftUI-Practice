//
//  IconsView.swift
//  Basic
//
//  Created by 김민 on 2023/07/10.
//

import SwiftUI

struct IconsView: View {
    var body: some View {
//        Image(systemName: "heart.fill")
//        Image(systemName: "books.vertical")
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
//            .resizable()
//            .aspectRatio(contentMode: .fit) // fill: 이미지를 최대화하여 가능한 많은 프레임을 차지하도록, fit: 크기가 조종되어 프레임 내에 유지
//            .scaledToFit()
//            .scaledToFill()
//            .font(.title)
//            .font(.system(size: 50))
//            .foregroundColor(.red)
//            .frame(width: 300, height: 300)
//            .clipped()
    }
}

struct IconsView_Previews: PreviewProvider {
    static var previews: some View {
        IconsView()
    }
}
