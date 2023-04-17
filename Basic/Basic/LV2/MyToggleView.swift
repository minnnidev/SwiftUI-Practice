//
//  MyToggleView.swift
//  Basic
//
//  Created by 김민 on 2023/04/17.
//

import SwiftUI

struct MyToggleView: View {
    
    @State var isLightOn: Bool = false
    
    var body: some View {
        
        Toggle(isOn: $isLightOn) {
            if isLightOn {
                Text("Light On")
            } else {
                Text("Light Off")
            }
        }
        .tint(.orange)
        .padding()
    }
}

struct MyToggleView_Previews: PreviewProvider {
    static var previews: some View {
        MyToggleView()
    }
}
