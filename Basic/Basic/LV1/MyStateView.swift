//
//  MyStateView.swift
//  Basic
//
//  Created by 김민 on 2023/04/10.
//

import SwiftUI

struct MyStateView: View {
    
    @State var name: String = "" // State 변수가 바뀌면 화면을 다시 그린다
    
    var body: some View {
        VStack {
            Text("Hi \(name)")
            
            Button {
                name = "MINI"
            } label: {
                Text("Click")
            }
        }
    }
}

struct MyStateView_Previews: PreviewProvider {
    static var previews: some View {
        MyStateView()
    }
}
