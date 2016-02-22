//
//  valores.swift
//  makePizzaAW
//
//  Created by Jorge Andres Moreno Castiblanco on 21/02/16.
//  Copyright © 2016 eworld. All rights reserved.
//

import WatchKit

class valores: NSObject {
    
    var resulTamanio = ""
    var resulMasa = ""
    var resulQueso = ""
    var resulIngredientes:[String] = []
    
    init(rt:String, rm:String, rq:String, ri:[String]) {
        resulTamanio = rt
        resulMasa = rm
        resulQueso = rq
        resulIngredientes = ri
    }

}
