//
//  ImagesView.swift
//  Basic
//
//  Created by 김민 on 2023/07/10.
//

import SwiftUI

struct ImagesView: View {
    var body: some View {
        Image("donghee")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFit()
            .frame(width: 300, height: 200)
//            .cornerRadius(150)
//            .clipShape(
////                Circle()
//                RoundedRectangle(cornerRadius: 25.0)
//            )
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
