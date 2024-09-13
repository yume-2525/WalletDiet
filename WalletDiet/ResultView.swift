import SwiftUI

struct ResultView: View {  // 結果画面の定義
    @Environment(\.presentationMode) var presentationMode  // 画面を閉じるための変数
    
    var body: some View {
        VStack {
            Text("結果画面")
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()  // 画面を閉じるアクション
            }) {
                Text("戻る")
                    .font(.body)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        //.navigationTitle("Result画面")  // 画面タイトル
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}

