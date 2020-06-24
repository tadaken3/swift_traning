//
//  QuestionView.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/22.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        HStack{
            VStack(){
                Circle()
                    .fill(Color.blue)
                Text("かなりあてはまる")
                    .lineLimit(3)
                    .font(.caption)
            }
            VStack(){
                Circle()
                    .fill(Color.blue)
                Text("あてはまる")
                    .lineLimit(3)
                    .font(.caption)
            }
            VStack(){
                Circle()
                    .fill(Color.blue)
                Text("よくわからない")
                    .lineLimit(3)
                    .font(.caption)
            }
            VStack(){
                Circle()
                .fill(Color.blue)
                Text("当てはまらない")
                    .lineLimit(3)
                    .font(.caption)
            }
            VStack(){
                Circle()
                .fill(Color.blue)
                Text("まったく当てはまらない")
                    .lineLimit(3)
                    .font(.caption)
    
            }

            
        }.frame(height:150)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
