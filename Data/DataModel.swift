//
//  DataModel.swift
//  IWallet
//
//  Created by Camila Storck on 02/11/2023.
//

import Foundation
import SwiftUI

struct DataModel {
    var total: Double
    var date: Date
    var movements: [Movement]
    
    
    func DateToString() -> Text {
         let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let dateString = dateFormatter.string(from: date)
        
        return Text(dateString)
    }
}

struct Movement {
    let id: Int
    let amount: Double
    let amountIn: Bool
    let amountOut: Bool
    let date: Date
}
