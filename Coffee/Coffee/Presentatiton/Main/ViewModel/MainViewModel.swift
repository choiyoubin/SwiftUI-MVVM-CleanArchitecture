//
//  MainViewModel.swift
//  Coffee
//
//  Created by 최유빈 on 12/24/24.
//

import SwiftUI

class MainViewModel: ObservableObject {
    @Published var coffeeList: [CoffeeDTO.CoffeeData] = []
    private let fetchSortedCoffeeUseCase: FetchSortedCoffeeUseCase
    
    init(fetchSortedCoffeeUseCase: FetchSortedCoffeeUseCase) {
        self.fetchSortedCoffeeUseCase = fetchSortedCoffeeUseCase
    }
    
    func fetchLatteList() {
        fetchSortedCoffeeUseCase.execute { [weak self] coffeeList in
            guard let self = self else { return }
            self.coffeeList = coffeeList
        }
    }
}
