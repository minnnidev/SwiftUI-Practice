//
//  MyModalView.swift
//  Basic
//
//  Created by 김민 on 2023/04/15.
//

import SwiftUI

struct MyModalView: View {
    @State var isShowingModal: Bool = false
    
    var body: some View {
        Button {
            isShowingModal = true
        } label: {
            Text("Call modal!")
        }
//        .sheet(isPresented: $isShowingModal) {
//            ZStack {
//                Color.orange.ignoresSafeArea()
//                Text("Modal View")
//            }
//        }
        .fullScreenCover(isPresented: $isShowingModal) {
            ZStack {
                Color.orange.ignoresSafeArea()
                VStack {
                    Text("Full Screen Cover")
                    Button {
                        isShowingModal = false
                    } label: {
                        Text("dismiss")
                    }
                }
            }
        }
    }
}

struct MyModalView_Previews: PreviewProvider {
    static var previews: some View {
        MyModalView()
    }
}
