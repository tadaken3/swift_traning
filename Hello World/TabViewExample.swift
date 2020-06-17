//
//  TabViewExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/11.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct TabViewExample: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            Content(content: "First View", color: .yellow)
                .tabItem {
                    VStack{
                        Image(systemName: "star")
                        Text("First")
                    }
                }.tag(0)
            
            Content(content: "Second View", color: .purple)
                  .tabItem {
                      VStack{
                          Image(systemName: "person.fill")
                          Text("Second")
                      }
                  }.tag(1)
            
            Content(content: "Third View", color: .green)
                  .tabItem {
                      VStack{
                          Image(systemName: "cart.fill")
                          Text("Third")
                      }
                  }.tag(2)
    
            
        }
    }
}

struct TabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}
