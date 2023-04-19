//
//  MySecuredField.swift
//  Basic
//
//  Created by 김민 on 2023/04/18.
//

import SwiftUI

struct MySecureField: View {
    @State private var password: String = ""
    @State var isSecureMode: Bool = true
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("비밀번호를 입력해 주세요")
            HStack {
                if isSecureMode {
                    SecureField("비밀번호를 입력해 주세요", text: $password)
                        .textFieldStyle(.roundedBorder)
                } else {
                    TextField("비밀번호를 입력해 주세요", text: $password)
                        .textFieldStyle(.roundedBorder)
                }
                
                Button {
                    isSecureMode.toggle()
                } label: {
                    Image(systemName: "eye")
                }
                .tint(.orange)
            }
        }
        .padding()
    }
}

struct MySecuredField_Previews: PreviewProvider {
    static var previews: some View {
        MySecureField()
    }
}
