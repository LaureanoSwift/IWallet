//
//  MovementsList.swift
//  IWallet
//
//  Created by Camila Storck on 02/11/2023.
//

import SwiftUI

private let movements = [Movement( id: 1,amount: 1000.0, amountIn: true, amountOut: false,date: Date()),
                         Movement( id: 2,amount: 2000.0, amountIn: false, amountOut: true,date: Date()),
                         Movement( id: 3,amount: 500.0, amountIn: true, amountOut: false,date: Date()),
                         Movement( id: 4,amount: 10000.0, amountIn: false, amountOut: true,date: Date())]

struct MovementsList: View {
    var body: some View {
        List(movements, id: \.id) { movement in
            MovementsCell(movement: movement)
            
        }
    }
}

struct MovementsList_Previews: PreviewProvider {
    static var previews: some View {
        MovementsList()
    }
}
