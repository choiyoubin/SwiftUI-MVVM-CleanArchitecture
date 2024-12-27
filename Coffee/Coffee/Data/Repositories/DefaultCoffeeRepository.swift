//
//  DefaultCoffeeRepository.swift
//  Coffee
//
//  Created by 최유빈 on 12/24/24.
//

import SwiftUI
import Alamofire

class DefaultCoffeeRepository: CoffeeRepository {
    
    @Published var coffeeList: [CoffeeDTO.CoffeeData] = []
    
    private let baseURL = "https://api.sampleapis.com/coffee/hot"
    
    func fetchCoffeeList(completion: @escaping ([CoffeeDTO.CoffeeData]) -> Void) {
        AF.request(baseURL)
            .validate()
            .responseDecodable(of: [CoffeeDTO.CoffeeData].self) { [weak self] response in
                guard let self = self else { return }
                
                switch response.result {
                case .success(let coffeeData):
                    self.coffeeList = coffeeData
                    completion(coffeeData)
                case .failure(let error):
                    print("\(error.localizedDescription)")
                    completion([])
                }
            }
    }
}
