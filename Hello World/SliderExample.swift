//
//  SliderExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/03.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct SliderExample: View {
    @State var pound: Double = 0.5
    @State var isChanged = false
    
    var body: some View {
        VStack {
            Slider(value: $pound, in: -100...100, step:1,
                   onEditingChanged: {changed in self.isChanged = changed },
                   minimumValueLabel: Text("min"),
                   maximumValueLabel: Text("max"),
                   label: {EmptyView()}
            )
            if isChanged {
                Text("\(pound) is \(pound * 0.45) kg")
            } else {
                Text("\(pound)")
            }
            
        }
    }
}

struct SliderExample_Previews: PreviewProvider {
    static var previews: some View {
        SliderExample()
    }
}
