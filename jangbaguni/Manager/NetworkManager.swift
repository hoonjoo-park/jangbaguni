//
//  NetworkManager.swift
//  jangbaguni
//
//  Created by Hoonjoo Park on 2023/01/01.
//

import UIKit

class NetworkManager {
    static let shared = NetworkManager()
    let baseURL = "https://firebasestorage.googleapis.com/v0/b/jangbaguni-7c726.appspot.com/o/jangbaguni.json?alt=media"
    let decoder = JSONDecoder()
    
    func fetchMenus() async throws -> [Menu] {
        guard let url = URL(string: baseURL) else {
            throw ErrorMessage.fetchError
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw ErrorMessage.defaultError
        }
        
        do {
            let decodedData = try decoder.decode([Menu].self, from: data)
            
            return decodedData
        } catch {
            throw ErrorMessage.defaultError
        }
    }
    
}
