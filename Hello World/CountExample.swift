//
//  CountExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/24.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct CountExample: View {
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("CountView: \(count)")
            Button(action: {
                self.count = self.count + 10
            }) {
                Text("count + 10")
            }
            MyStepper(value: $count)
        }
    }
}

struct MyStepper: View {
    @Binding var value: Int
    
    var body: some View {
        HStack {
            Text("MyStepper: \(value)")
            Button(action: {
                self.value = self.value - 1
            }) {
                Image(systemName: "minus")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(5)
            }
            Button(action: {
                self.value = self.value + 1
            }) {
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(5)
            }
        }.padding()
    }
}

struct CountExample_Previews: PreviewProvider {
    static var previews: some View {
        CountExample()
    }
}
