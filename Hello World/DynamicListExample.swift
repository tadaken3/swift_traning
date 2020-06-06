//
//  DynamicListExample.swift
//  Hello World
//
//  Created by 田中賢太 on 2020/06/06.
//  Copyright © 2020 kenta.tanaka. All rights reserved.
//

import SwiftUI

struct Restaurant:Identifiable {
    var id = UUID()
    var title:String
    var type:String
    var note:String
    var rating:Int
}

struct RestaurantRow: View {
    var restaurant : Restaurant
    var body :some View {
        RestaurantView(
            title: restaurant.title,
            type: restaurant.type,
            note: restaurant.note,
            rating: restaurant.rating
        )
    }
}


struct DynamicListExample: View {

    
    var body: some View {
        let restaurants = [
            Restaurant(
                title:"ああああ",
                type:"居酒屋",
                note:"魚介の和食",
                rating: 3
            ),
            Restaurant(
                title:"二番目",
                type:"レストラン",
                note:"サラダバーあります",
                rating: 2
            ),
            Restaurant(
                title:"三番目",
                type:"居酒屋",
                note:"これはノートです",
                rating: 1
            )
        ]
        return List(restaurants) {
            restaurant in RestaurantRow(restaurant: restaurant)
        }
    }
}

struct DynamicListExample_Previews: PreviewProvider {
    static var previews: some View {
        DynamicListExample()
    }
}
