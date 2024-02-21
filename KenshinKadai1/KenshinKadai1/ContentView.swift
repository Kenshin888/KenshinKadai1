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
                    if let n1 = Int(input1),let n2 = Int(input2),let n3 = Int(input3),let n4 = Int(input4),let n5 = Int(input5){
                        self.sum5 = n1 + n2 + n3 + n4 + n5
                    }else if let n1 = Int(input1),let n2 = Int(input2),let n3 = Int(input3),let n4 = Int(input4){
                        self.sum5 = n1 + n2 + n3 + n4
                    }else if let n1 = Int(input1),let n2 = Int(input2),let n3 = Int(input3){
                        self.sum5 = n1 + n2 + n3
                    }else if let n1 = Int(input1),let n2 = Int(input2){
                        self.sum5 = n1 + n2
                    }else{
                        self.sum5 = nil
                    }
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
