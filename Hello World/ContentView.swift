//
//  ContentView.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/05/31.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var labelText = "Hello SwiftUI"
    
    var body: some View {
        VStack(spacing: 80) {
            Text(labelText)
                .frame(width:150, height: 30)
                .border(Color.red)
                .offset(x:50 , y: 50)

            Button(action: {self.labelText = "Yes Tapped!"}) {
                Text("Tap!!")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                    .frame(width: 70, height: 20)
                    .border(Color.gray, width: 2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
