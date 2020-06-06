//
//  PathExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/07.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct PathExample: View {
    var body: some View {
        VStack {
        Path {
            path in path.addEllipse(in: CGRect(x:0,
                                                 y:0,
                                                 width:200,
                                                 height:100))
        }.fill(Color.pink)
        
        Rectangle()
            .stroke(lineWidth: 3)
            .fill(Color.pink)
            .frame(width:200, height:100)
        
        }
        
    }
}

struct PathExample_Previews: PreviewProvider {
    static var previews: some View {
        PathExample()
    }
}
