//
//  DetailView.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/10.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    @Environment(\.presentationMode) var presentaionMode

    var name: String = "Hello SwiftUI!"
    var body: some View {
        NavigationView{
            Text(name).font(.system(size: 30))
                .navigationBarItems(trailing: Button(action: {
                    self.presentaionMode.wrappedValue.dismiss()
                }) {
                    Text("Close")
                })
        }

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(name: "受け取った文字列")
    }
}
