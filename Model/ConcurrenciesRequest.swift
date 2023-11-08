//
//  ConcurrenciesRequest.swift
//  IWallet
//
//  Created by Camila Storck on 06/11/2023.
//
// https://api.currencyapi.com/v3/latest?apikey=cur_live_0fXgI3SqhcaPIfZM23dxK6uupWmlN7xDMc6FxUp1&currencies=EUR%2CUSD%2CRUB&base_currency=ARS

import Foundation
import UIKit

struct Concurrency: Codable {
        let code:String
        let value:Double
}

struct ConcurrenciesRequest: Codable {
    
    var meta: String
    var data : [Concurrency]
    
    
}
