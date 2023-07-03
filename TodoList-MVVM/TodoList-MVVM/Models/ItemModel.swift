//
//  ItemModel.swift
//  TodoList-MVVM
//
//  Created by 김민 on 2023/07/03.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
