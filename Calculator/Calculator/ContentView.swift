//
//  ContentView.swift
//  Calculator
//
//  Created by 김민 on 2023/03/22.
//

import SwiftUI

enum ButtonType: String {
    case first, second, third, fourth, fifth, sixth, seventh, eighth, nineth, zero
    case comma, equal, plus, minus, multiple, divide
    case percent, opposite, clear
    
    var buttonDisplayName: String {
        switch self {
        case .first:
            return "1"
        case .second:
            return "2"
        case .third:
            return "3"
        case .fourth:
            return "4"
        case .fifth:
            return "5"
        case .sixth:
            return "6"
        case .seventh:
            return "7"
        case .eighth:
            return "8"
        case .nineth:
            return "9"
        case .zero:
            return "0"
        case .comma:
            return ","
        case .equal:
            return "="
        case .plus:
            return "+"
        case .minus:
            return "-"
        case .multiple:
            return "X"
        case .divide:
            return "/"
        case .percent:
            return "%"
        case .opposite:
            return "+/-"
        case .clear:
            return "C"
        }
    }
        
    var backgroundColor: Color {
        switch self {
        case .first, .second, .third, .fourth, .fifth, .sixth, .seventh, .eighth, .nineth, .zero, .comma:
            return Color("NumberButtonColor")
        case .divide, .multiple, .minus, .plus, .equal:
            return .orange
        case .clear, .opposite, .percent:
            return .gray
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .clear, .opposite, .percent:
            return .black
        default:
            return .white
        }
    }
}

struct ContentView: View {
    @State private var totalNumber: String = "0"
    @State var tempNumber: Int = 0
    @State var operationType: ButtonType = .clear
    private let buttonData: [[ButtonType]] = [
        [.clear, .opposite, .percent, .divide],
        [.seventh, .eighth, .nineth, .multiple],
        [.fourth, .fifth, .sixth, .minus],
        [.first, .second, .third, .plus],
        [.zero, .comma, .equal]]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text(totalNumber)
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: 70))
                }
                
                ForEach(buttonData, id: \.self) {
                    line in
                    HStack {
                        ForEach(line, id: \.self) { item in
                            Button {
                                if totalNumber == "0" {
                                    if item == .clear {
                                        totalNumber = "0"
                                    } else if item == .plus || item == .minus || item == .multiple || item == .divide {
                                        totalNumber = "Error"
                                    } else {
                                        totalNumber = item.buttonDisplayName
                                    }
                                } else {
                                    switch item {
                                    case .clear:
                                        totalNumber = "0"
                                    case .plus:
                                        setOperationType(operation: .plus)
                                    case .multiple:
                                        setOperationType(operation: .multiple)
                                    case .minus:
                                        setOperationType(operation: .minus)
                                    case .equal:
                                        if operationType == .plus {
                                            totalNumber = String(tempNumber + (Int(totalNumber) ?? 0))
                                        } else if operationType == .multiple {
                                            totalNumber = String(tempNumber * (Int(totalNumber) ?? 0))
                                        } else if operationType == .minus {
                                            totalNumber = String(tempNumber - (Int(totalNumber) ?? 0))
                                        }
                                    default:
                                        totalNumber += item.buttonDisplayName
                                    }
                                }
                            } label:    {
                                Text(item.buttonDisplayName)
                                    .frame(width: calulateButtonWidth(button: item), height: calculateButtonHeight())
                                    .background(item.backgroundColor)
                                    .cornerRadius(40)
                                    .foregroundColor(item.foregroundColor)
                                    .font(.system(size: 33))
                            }
                        }
                    }
                }
            }
        }
    }
    
    private func calulateButtonWidth(button: ButtonType) -> CGFloat {
        let width = (UIScreen.main.bounds.width - 5*10) / 4
        switch button {
        case .zero:
            return width * 2
        default:
            return width 
        }
    }
    
    private func calculateButtonHeight() -> CGFloat {
        return (UIScreen.main.bounds.width - 5*10) / 4
    }
    
    private func setOperationType(operation: ButtonType) {
        tempNumber = Int(totalNumber)!
        operationType = operation
        totalNumber = "0"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
