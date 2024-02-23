//
//  ContentView.swift
//  MyPlus5
//
//  Created by Kenshin on 2024/02/19.
//

import SwiftUI

struct ContentView: View {
    @State var inputs: [String] = .init(repeating: "", count: 5)
    @State var sum5: Int? = nil

    var body: some View {
        VStack {
            CustomTextField(text: $inputs[0])
            CustomTextField(text: $inputs[1])
            CustomTextField(text: $inputs[2])
            CustomTextField(text: $inputs[3])
            CustomTextField(text: $inputs[4])
            HStack{
                Button{
                   sum5 = inputs.compactMap { Int($0) }.reduce(0, +)
                }label: {
                    Text("sum")
                }
            }
            if let result = sum5 {
                Text("結果は: \(result)")
            } else {
                Text("値が入っていません")
            }

            Spacer()
        }//VStack
    }//body
}//ContentView

struct CustomTextField: View {
    @Binding var text: String

    var body: some View {
        HStack{
            TextField("", text: $text)
                .padding(.horizontal,10)
                .frame(width:200,height:50)
                .border(Color.gray,width: 5)
                .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
