//
//  Coche.swift
//  Actividad1
//
//  Created by Alejandro Ramírez Callado on 20/4/17.
//  Copyright © 2017 Borja Alonso-Majagranzas Mendicote. All rights reserved.
//

import UIKit

class Coche: NSObject {
    
    var sNombre:String?
    var sMarca:String?
    var iFabricado:Int?
    
    
    init(valores:[String:AnyObject]){
        sNombre=valores["Nombre"] as? String
        sMarca=valores["Marca"] as? String
        iFabricado=valores["Fabricado"] as? Int
        
    }

}
