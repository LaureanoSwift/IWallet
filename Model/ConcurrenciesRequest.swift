//
//  ConcurrenciesRequest.swift
//  IWallet
//
//  Created by Camila Storck on 06/11/2023.
//
// https://api.currencyapi.com/v3/latest?apikey=cur_live_0fXgI3SqhcaPIfZM23dxK6uupWmlN7xDMc6FxUp1&currencies=EUR%2CUSD%2CRUB&base_currency=ARS

import Foundation

// MARK: - ConcurrencyRequest
struct ConcurrenciesRequest: Identifiable, Codable {
    
    var id: UUID = UUID()
    let meta: Meta
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let eur, rub, usd: Concurrency

    enum CodingKeys: String, CodingKey {
        case eur = "EUR"
        case rub = "RUB"
        case usd = "USD"
    }
}

// MARK: - Eur
struct Concurrency: Codable {
    let code: String
    let value: Double
}

// MARK: - Meta
struct Meta: Codable {
    let lastUpdatedAt: Date

    enum CodingKeys: String, CodingKey {
        case lastUpdatedAt = "last_updated_at"
    }
}
