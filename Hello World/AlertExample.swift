//
//  AlertExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/15.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct AlertExample: View {
    @State var showingAlert = false
    
    var body: some View {
        Button(action: {self.showingAlert = true})
        {
           Text("アラートを表示")
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("警告"),
                  message: Text("今日は紫外線が強いので日焼け止め必須です"),
            dismissButton: .default(Text("わかったよ")))
        }
        
    }
}

struct AlertExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertExample()
    }
}
