//
//  ImageButtonExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/02.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct ImageButtonExample: View {
    @State var isRecoding = false
    
    var body: some View {
        Button(action: {
            self.isRecoding.toggle()
        }) {
            if isRecoding {
                Image(systemName: "mic.fill")
                    .font(.system(size:200))
                    .foregroundColor(.red)
            } else {
                Image(systemName: "mic.slash.fill")
                    .font(.system(size:200))
                    .foregroundColor(.secondary)
                    .offset(x:1.5, y:0)
                
            }
        }
    }
}

struct ImageButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        ImageButtonExample()
    }
}
