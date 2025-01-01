//
//  DefaultCoffeeRepository.swift
//  Coffee
//
//  Created by 최유빈 on 12/24/24.
//

import SwiftUI
import Alamofire

class DefaultCoffeeRepository: CoffeeRepository {
    
    private let baseURL = "https://api.sampleapis.com/coffee/hot"
    
    func fetchCoffeeList(completion: @escaping ([CoffeeDTO.CoffeeData]) -> Void) {
        AF.request(baseURL)
            .validate()
            .responseDecodable(of: [CoffeeDTO.CoffeeData].self) { response in
                
                switch response.result {
                case .success(let coffeeData):
                    completion(coffeeData)
                case .failure(let error):
                    print("\(error.localizedDescription)")
                    completion([])
                }
            }
    }
}
