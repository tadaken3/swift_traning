//
//  TapButtonExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/01.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct TapButtonExample: View {
    @State var showDetails = false
    var body: some View {
        VStack{
            Button(action: {
                self.showDetails.toggle()
            }) {
                Text("詳細表示")
            }
            
            if showDetails{
                Text("詳しくはWEBで!")
                    .font(.largeTitle)
                    .lineLimit(nil)
            }
            
        }
    
    }
}

struct TapButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        TapButtonExample()
    }
}
