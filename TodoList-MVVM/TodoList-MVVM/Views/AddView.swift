//
//  AddView.swift
//  TodoList-MVVM
//
//  Created by 김민 on 2023/07/03.
//

import SwiftUI

struct AddView: View {

    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var isShowingAlert: Bool = false

    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray6))
                .cornerRadius(10)

                Button {
                    saveButtonDidTap()
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊️")
        .alert(isPresented: $isShowingAlert) {
            getAlert()
        }
    }

    func saveButtonDidTap() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        } else {

        }
    }

    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "3글자 이상 입력해 주세요. 🥲"
            isShowingAlert.toggle()
            return false
        }
        return true
    }

    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
