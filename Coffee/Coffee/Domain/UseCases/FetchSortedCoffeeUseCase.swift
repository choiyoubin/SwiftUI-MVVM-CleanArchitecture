//
//  FetchSortedCoffeeUseCase.swift
//  Coffee
//
//  Created by 최유빈 on 12/24/24.
//

protocol FetchSortedCoffeeUseCase {
    func execute(completion: @escaping([CoffeeDTO.CoffeeData]) -> Void)
}

class DefaultFetchSortedCoffeeUseCase: FetchSortedCoffeeUseCase {
    private let coffeeRepository: CoffeeRepository
    
    init(repository: CoffeeRepository) {
        self.coffeeRepository = repository
    }
    
    func execute(completion: @escaping ([CoffeeDTO.CoffeeData]) -> Void) {
        coffeeRepository.fetchCoffeeList { coffeeList in
            let latteList = coffeeList.filter { coffee in
                coffee.title.lowercased().contains("latte")
            }
            completion(latteList)
        }
    }
}
