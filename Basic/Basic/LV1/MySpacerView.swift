//
//  MySpacerView.swift
//  Basic
//
//  Created by 김민 on 2023/04/10.
//

import SwiftUI

struct MySpacerView: View {
    var body: some View {
        VStack {
            Image(systemName: "bolt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
            Text("BOLT!")
            Spacer()
            HStack {
                Image(systemName: "heart")
                Spacer()
                Text("HEART")
            }
            .padding(.horizontal, 30)
            Spacer()
            Button {
                print("쾅!")
            } label: {
                Text("HIT!")
            }

        }
    }
}

struct MySpacerView_Previews: PreviewProvider {
    static var previews: some View {
        MySpacerView()
    }
}
