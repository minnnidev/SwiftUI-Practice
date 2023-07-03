//
//  MyBinding.swift
//  Basic
//
//  Created by 김민 on 2023/04/20.
//

import SwiftUI

struct MyBinding: View {
    
    @State var isToggleOn: Bool = false
    
    var body: some View {
        
        // State 변수 앞에 $를 붙이면 바인딩 변수가 됨
        // State 변수의 상태를 계속 붙잡아 주고 있는 변수가 바인딩 변수
        Toggle(isOn: $isToggleOn) {
            Text("스위치")
        }
        .padding()
    }
}

struct MyBinding_Previews: PreviewProvider {
    static var previews: some View {
        MyBinding()
    }
}
