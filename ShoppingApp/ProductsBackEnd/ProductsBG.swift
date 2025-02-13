//
//  ProductBG.swift
//  ShoppingApp
//
//  Created by Dheeraj Pj on 27/07/23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    var filter: Filter
}

struct Filter: Identifiable, Equatable {
    var id = UUID()
    var name: String
}

var productList: [Product] = [  Product(name: "Book1", image: "book1", price: 199, filter: filteringTypes[0]),
                                Product(name: "Book2", image: "book2", price: 299, filter: filteringTypes[0]),
                                Product(name: "Book3", image: "book3", price: 399, filter: filteringTypes[1]),
                                Product(name: "Book4", image: "book4", price: 699, filter: filteringTypes[1]),
                                Product(name: "Book5", image: "book5", price: 199, filter: filteringTypes[2]),
                                Product(name: "Book6", image: "book6", price: 699, filter: filteringTypes[2]),
                                Product(name: "Book7", image: "book7", price: 1199, filter: filteringTypes[3]),
                                Product(name: "Book8", image: "book8", price: 1099, filter: filteringTypes[3])     ]


var filteringTypes: [Filter] = [    Filter(name: "Self help"),
                                   Filter(name: "Novels"),
                                   Filter(name: "Biography"),
                                   Filter(name: "Fiction")           ]


func devPrint(_ log: String) {
    print(log)
}
