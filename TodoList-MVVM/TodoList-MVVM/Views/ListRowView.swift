//
//  ListRowView.swift
//  TodoList-MVVM
//
//  Created by 김민 on 2023/07/03.
//

import SwiftUI

struct ListRowView: View {

    let title: String

    var body: some View {
        HStack {
            Image(systemName: "checkmark.square")
            Text(title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "첫 번째 아이템")
    }
}
