//
//  ItemModel.swift
//  TodoList-MVVM
//
//  Created by 김민 on 2023/07/03.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String 
    let title: String
    let isCompleted: Bool

    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }

    func updateCompletion() -> ItemModel { // 기존 item의 id를 사용하여 업데이트하기
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
