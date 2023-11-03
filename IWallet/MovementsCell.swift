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
        
        var dateString = movement.DateToString()
        
        HStack {
            Text(dateString).fontWeight(.semibold).padding()
            Spacer()
            if movement.amountIn == true {
            Text("$"+String(movement.amount)).fontWeight(.semibold).foregroundColor(Color.green).padding()
            } else {
                Text("$"+"-"+String(movement.amount)).fontWeight(.semibold).foregroundColor(Color.red).padding()
            }
        }
    }
}

struct MovementsCell_Previews: PreviewProvider {
    static var previews: some View {
        MovementsCell(movement: Movement(id: 1, amount: 1000.00, amountIn: true, amountOut: false, date: Date())).previewLayout(.fixed(width: 400, height: 60))
    }
}
