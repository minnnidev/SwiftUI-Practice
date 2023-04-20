//
//  MyShape.swift
//  Basic
//
//  Created by 김민 on 2023/04/20.
//

import SwiftUI

struct MyShape: View {
    var body: some View {
//        Circle()
//            .foregroundColor(.green)
//            .background(.red)
        
//        Rectangle()
//            .foregroundColor(.green)
        
//        RoundedRectangle(cornerRadius: 30)
//            .foregroundColor(.green)
        
//        Ellipse()
//            .foregroundColor(.green)
        
//        Capsule()
//            .foregroundColor(.green)
        
        Image(systemName: "heart")
            .resizable()
            .clipShape(Circle()) // 자르는 데에도 사용할 수 있음!
    }
}

struct MyShape_Previews: PreviewProvider {
    static var previews: some View {
        MyShape()
    }
}
