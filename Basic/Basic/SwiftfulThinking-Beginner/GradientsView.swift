//
//  GradientsView.swift
//  Basic
//
//  Created by 김민 on 2023/07/10.
//

import SwiftUI

struct GradientsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                .red
//                LinearGradient(gradient: Gradient(colors: [.orange, .pink]), // 색상 배열. 여러 개 넣기
//                               startPoint: .leading,
//                               endPoint: .trailing)
//                RadialGradient(gradient: Gradient(colors: [.red, .blue]),
//                               center: .center,
//                               startRadius: 5,
//                               endRadius: 200)
                AngularGradient(gradient: Gradient(colors: [.red, .blue]),
                                center: .topLeading,
                                startAngle: .degrees(0),
                                endAngle: .degrees(200))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsView_Previews: PreviewProvider {
    static var previews: some View {
        GradientsView()
    }
}
