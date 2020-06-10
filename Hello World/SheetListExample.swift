//
//  SheetListExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/10.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct SheetListExample: View {
    @State var mfgs = ["Kawasaki","Honda","Yamaha","Shuzuki","Ducati","BMW"]
    
    @State var showingDetail = false
    
    var body: some View {
        List {
            Text("Manufacturing").font(.system(size: 30))
            ForEach(mfgs, id: \.self) {mfg in
                Button(action: {self.showingDetail.toggle() }) {
                    Text(mfg)
                }.sheet(isPresented: self.$showingDetail){
                    DetailView(name: mfg)
                }
                
            }
        }
    }
}

struct SheetListExample_Previews: PreviewProvider {
    static var previews: some View {
        SheetListExample()
    }
}
