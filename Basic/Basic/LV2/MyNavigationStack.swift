//
//  MyNavigationStack.swift
//  Basic
//
//  Created by 김민 on 2023/04/19.
//

import SwiftUI

struct MyNavigationStack: View {
    var body: some View {
        NavigationStack {
            NavigationLink(value: 3) {
                Text("test3")
            }
            .navigationDestination(for: Int.self) { value in
                Text("Mins value: \(value)")
            }
        }
    }
}

struct MyNavigationStack_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationStack()
    }
}
