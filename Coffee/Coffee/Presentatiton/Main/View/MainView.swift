//
//  MainView.swift
//  Coffee
//
//  Created by 최유빈 on 12/24/24.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewModel: MainViewModel
    
    init(viewModel: MainViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        List(viewModel.coffeeList, id: \.id) { coffee in
            HStack {
                Text(coffee.title)
                    .font(.headline)
                
                Spacer()
            }
        }
        .onAppear {
            viewModel.fetchLatteList()
        }
    }
}
