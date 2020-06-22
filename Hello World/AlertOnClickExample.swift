//
//  AlertOnClickExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/18.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct AlertOnClickExample: View {
    @State var showingAlert = false
    @State var answerMessage = ""
    
    var body: some View {
        let onButtonClickCat = {
            self.answerMessage = "あなたはネコを選びました"
        }
        let onButtonClickDog = {
            self.answerMessage = "あなたはイヌを選びました"
        }
        return VStack {
            Button(action: {
                self.showingAlert = true
            }){
                Text("アラートを表示")
            }
            .alert(isPresented: $showingAlert){
                Alert.init(
                    title: Text("質問"),
                    message: Text("あなたはどちらの動物に近いですか?"),
                    primaryButton: .destructive(Text("ネコ"),
                    action: onButtonClickCat),
                    secondaryButton: .destructive(Text("イヌ"),
                    action: onButtonClickDog)
                )
            }
            Text(answerMessage)
        }
    }
}

struct AlertOnClickExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertOnClickExample()
    }
}
