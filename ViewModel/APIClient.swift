//
//  APIClient.swift
//  IWallet
//
//  Created by Camila Storck on 06/11/2023.
//

import Foundation
import UIKit
import SwiftUI

class APIClient: ObservableObject {
    
    @Published var apiResponse: String = ""
    
    func fetchData(completion : @escaping (ConcurrenciesRequest?) -> Void) {
        
        let endPoint = "https://api.currencyapi.com/v3/latest?apikey=cur_live_0fXgI3SqhcaPIfZM23dxK6uupWmlN7xDMc6FxUp1&currencies=EUR%2CUSD%2CRUB&base_currency=ARS"
        
        if let url = URL(string: endPoint) {
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("error al hacer la solicitud api: \(error.localizedDescription)")
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse,
                      (200...299).contains(httpResponse.statusCode) else {
                          print("Respuesta de API no valida")
                          return
                      }
                if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        let concurrencies = try decoder.decode(ConcurrenciesRequest.self, from: data)
                        
                        completion(concurrencies)
                    } catch {
                        print("Error al decodificar datos Json: \(error.localizedDescription)")
                    }
                }
            }.resume()
        }
    }
    
}
