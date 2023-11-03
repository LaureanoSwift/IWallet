//
//  MovementsCell.swift
//  IWallet
//
//  Created by Camila Storck on 01/11/2023.
//

import SwiftUI

struct MovementsCell: View {
    
    var movement: Movement
    
    var body: some View {
        
        HStack {
            Text("19/11").fontWeight(.semibold).padding()
            Spacer()
            Text("$"+String(movement.amount)).fontWeight(.semibold).padding()
                
        }
        
    }
}

struct MovementsCell_Previews: PreviewProvider {
    static var previews: some View {
        MovementsCell(movement: Movement(id: 1, amount: 1000.00, amountIn: true, amountOut: false, date: Date())).previewLayout(.fixed(width: 400, height: 60))
    }
}
