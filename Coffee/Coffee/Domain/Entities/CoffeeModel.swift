//
//  CoffeeModel.swift
//  Coffee
//
//  Created by 최유빈 on 12/24/24
//

struct CoffeeList {
    let coffeeData: [Coffee]
}

struct Coffee {
    let title: String
    let description: String
    let ingredients: [String]
    let image: String
    let id: Int
}
