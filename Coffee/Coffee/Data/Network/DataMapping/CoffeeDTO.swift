//
//  CoffeeDTO.swift
//  Coffee
//
//  Created by 최유빈 on 12/24/24.
//

struct CoffeeDTO: Codable {
    let coffeeData: [CoffeeData]
}

extension CoffeeDTO {
    struct CoffeeData: Codable {
        let title: String
        let description: String
        let ingredients: [String]
        let image: String
        let id: Int
    }
}

extension CoffeeDTO {
    func toDomain() -> CoffeeList {
        return .init(coffeeData: coffeeData.map { $0.toDomain() })
    }
}

extension CoffeeDTO.CoffeeData {
    func toDomain() -> Coffee {
        return .init(
            title: title,
            description: description,
            ingredients: ingredients,
            image: image,
            id: id
        )
    }
}
