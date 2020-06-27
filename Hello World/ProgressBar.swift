//
//  ProgressBar.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/27.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var value: Float
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color(UIColor.systemTeal))
            
                Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color(UIColor.systemBlue))
                    .animation(.linear)
            }
        
        }
    }
}
