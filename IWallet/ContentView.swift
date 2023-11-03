//
//  ContentView.swift
//  IWallet
//
//  Created by Camila Storck on 01/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack (alignment: .center, spacing: 20){
            
            Text("$999,99").frame(width: 200, height: 50, alignment: .center).font(.custom("SF Pro Display", size: 35))
                .padding().foregroundColor(Color.white).background(Color.black).cornerRadius(12)
            
            HStack {
                Spacer()
                Image(systemName: "dollarsign.circle.fill").resizable().padding(10).frame(width: 70, height: 70).border(.black, width: 3)
                Spacer()
                Image(systemName: "dollarsign.circle").resizable().padding().frame(width: 70, height: 70).border(.black, width: 3)
                Spacer()
                Image(systemName: "creditcard").resizable().padding().frame(width: 70, height: 70).border(.black, width: 3)
                Spacer()
            }
            Spacer()
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
