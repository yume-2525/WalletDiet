//
//  ContentView.swift
//  WalletDiet
//
//  Created by 高田梓沙 on 2024/09/02.
//

import SwiftUI

struct ContentView: View {
    //入力された文字列を保持する状態変数
    @State var inputText = ""
    var body: some View {
        //垂直にレイアウト
        VStack {
            //文字を受け取るTextFieldを表示
            TextField("支払い金額", text: $inputText
                      , prompt: Text("支払い金額を入力してください"))
            //キーボードの改行を検索に変更する
            .submitLabel(.search)
            //上下左右に空白
            .padding()
            
        }//VStack
    } // body
}//ContentView


#Preview {
    ContentView()
}
