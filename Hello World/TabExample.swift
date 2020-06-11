//
//  TabExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/11.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct TabExample: View {
    var body: some View {
        TabView{
            Text("FirstContent")
                .tabItem{ Text("First") }
            Text("SecondContent")
                .tabItem{Text("Second") }
        }
    }
}

struct TabExample_Previews: PreviewProvider {
    static var previews: some View {
        TabExample()
    }
}
