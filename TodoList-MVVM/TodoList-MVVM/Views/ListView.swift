//
//  ListView.swift
//  TodoList-MVVM
//
//  Created by 김민 on 2023/07/03.
//

import SwiftUI

struct ListView: View {

    @State var items: [String] = [
        "첫 번째 아이템",
        "두 번째 아이템",
        "세 번째 아이템"
    ]

    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
