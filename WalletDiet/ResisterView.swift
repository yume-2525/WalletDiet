    //
    //  ContentView.swift
    //  WalletDiet
    //


import SwiftUI

struct ResisterView: View {
    //金額を保持する変数
    @State var price = ""
    @State private var isInvalidInput = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    Text(price)
                        .font(.largeTitle)
                    Text("円")
                        .font(.largeTitle)
                }
                Text("支払い金額を入力してください")
                    .font(.headline)
                    .padding()
                

                HStack {
                    //文字を受け取るTextField
                    TextField("金額", text: $price)
                        .padding()
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .onChange(of: price) {
                            if let _ = Int(price) {
                                isInvalidInput = false
                            } else {
                                isInvalidInput = true
                            }
                        }
                    
                    NavigationLink(destination: ResultView()) {
                        Text("確定")
                            .font(.body)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .disabled(isInvalidInput)
                }
                
                if isInvalidInput {
                    Text("数値を入力してください。")
                        .foregroundColor(.red)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ResisterView()
}
