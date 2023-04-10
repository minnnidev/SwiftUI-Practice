//
//  MySectionView.swift
//  Basic
//
//  Created by 김민 on 2023/04/10.
//

import SwiftUI

struct MySectionView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Image(systemName: "heart")
                    Text("Kim")
                }
                
                HStack {
                    Image(systemName: "star")
                    Text("Lee")
                }
                
                HStack {
                    Image(systemName: "bolt")
                    Text("Park")
                }
            } header: {
                HStack {
                    Image(systemName: "bolt")
                    Text("A")
                } // custom한 뷰를 header에 넣을 수 있음
            }
            
            Section {
                HStack {
                    Image(systemName: "heart")
                    Text("Kim")
                }
                
                HStack {
                    Image(systemName: "star")
                    Text("Lee")
                }
                
                HStack {
                    Image(systemName: "bolt")
                    Text("Park")
                }
            } header: {
                Text("B")
            }
            
            Section {
                HStack {
                    Image(systemName: "heart")
                    Text("Kim")
                }
                
                HStack {
                    Image(systemName: "star")
                    Text("Lee")
                }
                
                HStack {
                    Image(systemName: "bolt")
                    Text("Park")
                }
            } header: {
                Text("C")
            } footer: {
                Text("Footer Test")
            }

        }
    }
}

struct MySectionView_Previews: PreviewProvider {
    static var previews: some View {
        MySectionView()
    }
}
