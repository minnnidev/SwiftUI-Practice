//
//  MyAlertView.swift
//  Basic
//
//  Created by 김민 on 2023/04/17.
//

import SwiftUI

struct MyAlertView: View {
    
    @State var isShowingAlert: Bool = false
    
    var body: some View {
        Button {
            isShowingAlert = true
        } label: {
            Text("Show Alert")
        }
        .alert(isPresented: $isShowingAlert) {
//            Alert(title: Text("Alert Title"))
            Alert(title: Text("Title"),
                  message: Text("Message"),
                  primaryButton: .default(Text("확인")),
                  secondaryButton: .destructive(Text("빨강")))
        }
    }
}

struct MyAlertView_Previews: PreviewProvider {
    static var previews: some View {
        MyAlertView()
    }
}
