//
//  ConcurrencyManage.swift
//  IWallet
//
//  Created by Camila Storck on 07/11/2023.
//

import Foundation
import UIKit

class ConcurrencyManage {
    
     private var datos: ConcurrenciesRequest? = nil
    
    var apiManager = APIClient()
    
    
    func fetchDataFromAPI() {
        apiManager.fetchData { datos in
            self.datos = datos
            
        }
        
        
    }
    
    
    
}
