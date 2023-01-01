//
//  OrderViewModel.swift
//  jangbaguni
//
//  Created by Hoonjoo Park on 2023/01/01.
//

import Foundation

class OrderViewModel {
    var menus: [Menu] = []
    
    init() {
        Task {
            do {
                self.menus = try await NetworkManager.shared.fetchMenus()
            }
        }
    }
}
