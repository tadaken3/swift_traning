//
//  Content.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/11.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct Content: View {
    var content : String
    var color : Color
    var body: some View {
        ZStack {
            Rectangle().fill(color)
            Text(content).font(.largeTitle)

        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content(content: "test", color : .purple)
    }
}
