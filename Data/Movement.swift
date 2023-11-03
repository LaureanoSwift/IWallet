//
//  Movement.swift
//  IWallet
//
//  Created by Camila Storck on 03/11/2023.
//

import Foundation


struct Movement {
    let id: Int
    let amount: Double
    let amountIn: Bool
    let amountOut: Bool
    let date: Date
    
    func DateToString() -> String {
         let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let dateString = dateFormatter.string(from: date)
        
        return dateString
    }
    
}


