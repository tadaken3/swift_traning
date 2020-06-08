//
//  ContentView.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/05/31.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var message = "NavigationBarボタンをタップしてください"
    
    var body: some View {
        NavigationView{
            Text(message).font(.largeTitle)
                .navigationBarTitle("Welecome")
                .navigationBarItems(
                    leading: Button(action: {
                        self.message = "Closed tapped"
                        }) {
                            Text("Close")
                        },
                    trailing:
                        HStack{
                            Button(action: {
                                self.message = "Help tapped!"
                            }) {
                                Text("Help")
                            }
                            Button(action: {
                                self.message = "Info tapped!"
                            }) {
                                Image(systemName: "info.circle")
                            }
                        }
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
