//
//  AlertButtonExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/16.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct AlertButtonExample: View {
    @State var showingAlert = false
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("アラートを表示")
        }
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("質問"),
                message: Text("あなたはどちらの動物に近いですか？"),
                primaryButton: .destructive(Text("ネコ")),
                secondaryButton: .cancel(Text("イヌ")))
        }
    }
}

struct AlertButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertButtonExample()
    }
}
