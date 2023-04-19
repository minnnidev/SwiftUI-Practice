//
//  MyLabel.swift
//  Basic
//
//  Created by 김민 on 2023/04/18.
//

import SwiftUI

struct MyLabel: View {
    var body: some View {
        VStack {
            HStack {
                Text(Image(systemName: "house"))
                Text("하우스")
            }
            Label("하우스", systemImage: "house")
        }
    }
}

struct MyLabel_Previews: PreviewProvider {
    static var previews: some View {
        MyLabel()
    }
}
