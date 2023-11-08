//
//  ContentView.swift
//  IWallet
//
//  Created by Camila Storck on 01/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isExpanded = false
    
    var body: some View {
        
        VStack (alignment: .center, spacing: 20){
            
            Text("IWallet").frame(width:420, height: 70, alignment: .center).foregroundColor(Color.white).background(Color.black)
            HStack {
                Image(systemName: "person.crop.circle.fill").resizable().frame(width: 30, height: 30)
                Text("CA: 68859405993").frame(width: 200, height: 30, alignment: .center).padding(5).foregroundColor(Color.white).background(Color.black).cornerRadius(12)
            }
            
            
            Text("$999,99").frame(width: 200, height: 50, alignment: .center).font(.custom("SF Pro Display", size: 35))
                .padding().foregroundColor(Color.white).background(Color.black).cornerRadius(12)
            
            
            VStack {
                HStack {
                    Spacer()
                    VStack{
                        Image(systemName: "dollarsign.circle.fill").resizable().frame(width: 70, height: 70).padding(10).background(Color.gray).cornerRadius(12)
                        Text("Transferir")
                    }
                    Spacer()
                    VStack{
                        Image(systemName: "qrcode").resizable().frame(width: 70, height: 70).padding(10).background(Color.gray).cornerRadius(12)
                        Text("Pagar QR")
                    }
                    Spacer()
                    VStack{
                        Image(systemName: "newspaper").resizable().frame(width: 70, height: 70).padding(10).background(Color.gray).cornerRadius(12)
                        Text("Pagos")
                    }
                    Spacer()
                }
                HStack {
                    Spacer()
                    VStack{
                        Image(systemName: "cart.fill").resizable().frame(width: 70, height: 70).padding(10).background(Color.gray).cornerRadius(12)
                        Text("Comercios Cercanos")
                    }
                    Spacer()
                    VStack{
                        Image(systemName: "banknote").resizable().frame(width: 70, height: 70).padding(10).background(Color.gray).cornerRadius(12)
                        Text("Valor de Cambio")
                    }
                    Spacer()
                }
            }
            
            List {
                DisclosureGroup("Movimientos", isExpanded: $isExpanded) {
                    MovementsList()
                }
            }
            }
            Spacer()
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
