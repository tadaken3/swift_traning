//
//  ObservedObjectExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/25.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

class MyData: ObservableObject {
    @Published var score = 0
}


struct ObservedObjectExample: View {
    @ObservedObject var data: MyData
    
    var body: some View {
        VStack {
            Text("\(data.score)")
            Button(action: {
                self.data.score += 1
            }) {
                Text("カウントアップ")
            }
            
        }
    }
}

struct ObservedObjectExample_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectExample(data: MyData())
    }
}
