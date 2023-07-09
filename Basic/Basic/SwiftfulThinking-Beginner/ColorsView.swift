//
//  ColorsView.swift
//  Basic
//
//  Created by 김민 on 2023/07/10.
//

import SwiftUI

// 현재 Color Literal은 실종 ;ㅅ;

struct ColorsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
//            .fill(.primary) // primary, secondary - darkmode 대응 ㄱㄴ
            .fill(
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.7),
                    radius: 10,
                    x: -20,
                    y: -20)
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}
