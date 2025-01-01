//
//  CoffeRepository.swift
//  Coffee
//
//  Created by 최유빈 on 12/24/24.
//

import Foundation

protocol CoffeeRepository {
    func fetchCoffeeList(completion: @escaping ([CoffeeDTO.CoffeeData]) -> Void)
}
