//
//  ListViewModel.swift
//  TodoList-MVVM
//
//  Created by 김민 on 2023/07/03.
//

import Foundation

class ListViewModel: ObservableObject {

    @Published var items: [ItemModel] = []

    init() {
       getItems()
    }

    func getItems() {
        let newItems = [
            ItemModel(title: "첫 번째", isCompleted: false),
            ItemModel(title: "두 번째", isCompleted: true),
            ItemModel(title: "세 번째", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }

    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }

    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }

    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }

    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
}
