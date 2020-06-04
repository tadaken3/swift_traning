//
//  PickerImageExapmle.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/04.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct PickerImageExapmle: View {
    @State var weatherStr = "曇り時々晴れ"
    var body: some View {
        Picker(selection: $weatherStr, label: Text("Weather:\(weatherStr)")){
            Image(systemName: "sun.max.fill")
            .tag("晴れ")
            Image(systemName: "cloud.fill")
            .tag("曇り")
            Image(systemName: "cloud.sun.fill")
            .tag("曇り時々晴れ")
            Image(systemName: "umbrella.fill")
            .tag("雨")
            Image(systemName: "snow")
            .tag("雪")
        }
    }
}

struct PickerImageExapmle_Previews: PreviewProvider {
    static var previews: some View {
        PickerImageExapmle()
    }
}
