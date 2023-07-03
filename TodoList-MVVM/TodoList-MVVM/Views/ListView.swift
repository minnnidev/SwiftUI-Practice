//
//  ListView.swift
//  TodoList-MVVM
//
//  Created by 김민 on 2023/07/03.
//

import SwiftUI

struct ListView: View {

    @State var items: [ItemModel] = [
        ItemModel(title: "첫 번째", isCompleted: false),
        ItemModel(title: "두 번째", isCompleted: true),
        ItemModel(title: "세 번째", isCompleted: false)
    ]

    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
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
