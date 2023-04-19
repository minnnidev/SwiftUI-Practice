//
//  MyTextFieldView.swift
//  Basic
//
//  Created by 김민 on 2023/04/18.
//

import SwiftUI

struct MyTextFieldView: View {
    @State private var userID: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("ID")
            TextField("Enter your ID", text: $userID)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}

struct MyTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextFieldView()
    }
}
