//
//  AddRowExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/06.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct AddRowExample: View {
    @State var mfgs:[String] = []
    @State var new = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .leading){
                Text("Add new manufancturing")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                HStack{
                    TextField("Input new mfg",text: $new)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        self.mfgs.append(self.new)
                        self.new = ""
                    }) {
                        Image(systemName: "plus")
                    }
                    EditButton()
                }
            }.padding([.leading,.trailing])
            
            
            List {
                ForEach(mfgs, id: \.self){
                    user in Text(user)
                }.onMove{ source,destination in self.mfgs.move(fromOffsets: source, toOffset: destination)
                    
                }.onDelete {offsets in self.mfgs.remove(atOffsets: offsets)}
                
            }
        }
    }
}

struct AddRowExample_Previews: PreviewProvider {
    static var previews: some View {
        AddRowExample()
    }
}
