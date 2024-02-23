//
//  ContentView.swift
//  MyPlus5
//
//  Created by Kenshin on 2024/02/19.
//

import SwiftUI

struct ContentView: View {
    @State var input1 = ""
    @State var input2 = ""
    @State var input3 = ""
    @State var input4 = ""
    @State var input5 = ""
    @State var sum5: Int? = nil

    var body: some View {
        VStack {
            HStack{
                TextField("",text: $input1)
                    .padding(.horizontal,10)
                    .frame(width:200,height:50)
                    .border(Color.gray,width:5)
                    .padding()
                Spacer()
            }//HStack
            HStack{
                TextField("",text: $input2)
                    .padding(.horizontal,10)
                    .frame(width:200,height:50)
                    .border(Color.gray,width:5)
                    .padding()
                Spacer()
            }
            HStack{
                TextField("",text: $input3)
                    .padding(.horizontal,10)
                    .frame(width:200,height:50)
                    .border(Color.gray,width: 5)
                    .padding()
                Spacer()
            }
            HStack{
                TextField("",text: $input4)
                    .padding(.horizontal,10)
                    .frame(width:200,height:50)
                    .border(Color.gray,width: 5)
                    .padding()
                Spacer()
            }
            HStack{
                TextField("",text: $input5)
                    .padding(.horizontal,10)
                    .frame(width:200,height:50)
                    .border(Color.gray,width: 5)
                    .padding()
                Spacer()
            }
            HStack{
                Button{
                   sum5 = [Int(input1),Int(input2),Int(input3),Int(input4),Int(input5)].compactMap{$0}.reduce(0,+)
                }label: {
                    Text("sum")
                }
            }
            if let result = sum5{
                Text("結果は: \(result)")
            }else{
                Text("値が入っていません")
            }

            Spacer()
        }//VStack
    }//body
}//ContentView

#Preview {
    ContentView()
}
