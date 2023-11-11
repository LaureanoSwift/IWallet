//
//  ValorDeCambio.swift
//  IWallet
//
//  Created by Camila Storck on 07/11/2023.
//

import SwiftUI

struct ValorDeCambio: View {
    
    @State private var model: ConcurrenciesRequest?
    let fetch = APIClient()
    
    var body: some View {
        
        VStack{
            if let codigoUSD = model?.data.usd.code {
                Text("codigo usd: \(codigoUSD)")
            } else {
                Text("imposible leer")
            }
        }
        .onAppear() {
            Task {
                do {
                    model = try await fetch.fetchData()
                } catch {
                    print("error")
                }
            }
        }
    }
}





    struct ValorDeCambio_Previews: PreviewProvider {
        static var previews: some View {
            ValorDeCambio()
        }
    }


