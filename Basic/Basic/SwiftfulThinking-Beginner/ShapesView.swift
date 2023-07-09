//
//  ShapesView.swift
//  Basic
//
//  Created by 김민 on 2023/07/10.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 30)
//            .fill(.pink)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(.red)
//            .stroke(.blue, lineWidth: 30)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(.purple, lineWidth: 30)
            .frame(width: 300, height: 200)
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
