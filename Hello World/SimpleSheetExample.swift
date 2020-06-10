//
//  SimpleSheetExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/09.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct SimpleSheetExample: View {
    
    @State var showingDetail = false
    @State var message = ""
    
    var body: some View {
        VStack {
            Button(action : {self.showingDetail.toggle()} ){
                Text("モーダル表示")
                
            }.sheet(isPresented: $showingDetail,
                    onDismiss:{ self.message = "モーダル画面を閉じました" }) {
                        ModalView()
                }
            Text(message)
        }
    }
}
struct SimpleSheetExample_Previews: PreviewProvider {
    static var previews: some View {
        SimpleSheetExample()
    }
}
