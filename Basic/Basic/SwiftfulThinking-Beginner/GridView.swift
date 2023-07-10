//
//  GridView.swift
//  Basic
//
//  Created by 김민 on 2023/07/11.
//

import SwiftUI

struct GridView: View {

    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6)
//            GridItem(.adaptive(minimum: 50, maximum: 300)),
//            GridItem(.adaptive(minimum: 150, maximum: 300))
    ]

    var body: some View {
        ScrollView {
//            Rectangle()
//                .fill(.blue)
//                .frame(height: 400)
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 50)
//                }
//            }

            Rectangle()
                .fill(.orange)
                .frame(height: 400)

            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]) {
                Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
                    .padding()

                ) {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }

                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.red)
                    .padding()

                ) {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .frame(height: 150)
                            .background(.green)
                    }
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
