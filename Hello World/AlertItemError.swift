//
//  AlertItemError.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/17.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct AlertError: Identifiable, CustomStringConvertible {
    var description: String {
        "title: \(title) \nmessage: \(message) \nok: \(ok)"
    }
    
    var id = UUID()
    let title: String
    let message: String
    let ok: String
}
