//
//  CoffeeApp.swift
//  Coffee
//
//  Created by 최유빈 on 12/24/24.
//

import SwiftUI

@main
struct CoffeeApp: App {
    var body: some Scene {
        WindowGroup {
            let repository = DefaultCoffeeRepository()
            let useCase = DefaultFetchSortedCoffeeUseCase(repository: repository)
            let viewModel = MainViewModel(fetchSortedCoffeeUseCase: useCase)
            
            MainView(viewModel: viewModel)
        }
    }
}
