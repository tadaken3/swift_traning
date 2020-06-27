//
//  Content.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/11.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct Content: View {
    @State var progressValue: Float = 0.5

    var body: some View {
        VStack {
            ProgressBar(value: $progressValue).frame(height: 20)
                Spacer()
            }.padding()
        }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content()
    }
}
