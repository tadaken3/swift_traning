//
//  StaticListExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/06.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct StaticListExample: View {
    var body: some View {
        List {
            RestaurantView(
                title: "壱",
                type: "居酒屋",
                note: "おしゃれなお店"
            )
            RestaurantView(
                      title: "弐",
                      type: "居酒屋",
                      note: "おしゃれなお店"
            )
            RestaurantView(
                      title: "ターリー屋",
                      type: "居酒屋",
                      note: "おしゃれなお店"
            )
        }
    }
}

struct StaticListExample_Previews: PreviewProvider {
    static var previews: some View {
        StaticListExample()
    }
}
