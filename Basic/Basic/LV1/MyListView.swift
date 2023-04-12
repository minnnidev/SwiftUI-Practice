//
//  ContentView.swift
//  Basic
//
//  Created by 김민 on 2023/04/06.
//
// List - UIKit에서의 UITableView와 거의 비슷

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    let name: String
    let imageName: String
}

struct MyListView: View {
    var body: some View {
    let names: [String] = ["Kim", "Lee", "Park"]
    let people: [Person] = [Person(name: "Kim", imageName: "heart"),
                                Person(name: "Lee", imageName: "star"),
                                Person(name: "Park", imageName: "bolt")]

//  1. 정적 리스트
//        List {
//            HStack {
//                Image(systemName: "heart")
//                Text("Kim")
//            }
//            HStack {
//                Image(systemName: "star")
//                Text("Lee")
//            }
//            HStack {
//                Image(systemName: "bolt")
//                Text("Park")
//            }
//        }
        
//  2. 동적 리스트 - id
//        List(names, id: \.self) { name in
//            // id: <#T##KeyPath<RandomAccessCollection.Element, Hashable>#>
//            // List에서 꺼내기 위해서는 name의 값이 고유하다는 것을 보장해 줘야 해!
//            // 똑같은 이름이 여러 개라면 어느 것인지 알 수 없기 때문
//            HStack {
//                Image(systemName: "heart")
//                Text(name)
//            }
//        }
// 3. 동적 리스트 - 구조체
        List(people) { person in
            HStack {
                Image(systemName: person.imageName)
                Text(person.name)
            }
        }
    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView()
    }
}
