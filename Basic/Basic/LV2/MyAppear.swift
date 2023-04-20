//
//  MyAppear.swift
//  Basic
//
//  Created by 김민 on 2023/04/19.
//

import SwiftUI

struct MyAppear: View {
    
    @State var name: String = "No Name"
    @State var isPresented: Bool = false
    
    var body: some View {
        NavigationView {
            NavigationLink {
                Text("Sample View")
            } label: {
                Text("Sample")
            }
            .onAppear {
                print("On Appear2")
            }
            .onDisappear {
                print("On Disappear2")
            }
        }
        .onAppear {
            print("On Appear")
        }
        .onDisappear {
            print("On Disappear")
        }
        
        
        
//        VStack {
//            Text(name)
//                .onAppear {
//                    // 뷰가 나타나기 전의 어떤 행동을 추가
//                    print("On Appear")
//                }
//                .onDisappear {
//                    // 뷰가 사라진 후의 어떤 행동을 추가
//                    print("On Disappear")
//                }
//                .sheet(isPresented: $isPresented) {
//                    Text("Modal")
//                }
//            Button {
//                isPresented.toggle()
//            } label: {
//                Text("Present Modal")
//                    .onAppear {
//                        // 뷰가 나타나기 전의 어떤 행동을 추가
//                        print("On Appear2")
//                    }
//                    .onDisappear {
//                        // 뷰가 사라진 후의 어떤 행동을 추가
//                        print("On Disappear2")
//                    }
//            }
//
//        }
    }
}

struct MyAppear_Previews: PreviewProvider {
    static var previews: some View {
        MyAppear()
    }
}
