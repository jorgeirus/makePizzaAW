//
//  terceraVista.swift
//  makePizzaAW
//
//  Created by Jorge Andres Moreno Castiblanco on 19/02/16.
//  Copyright © 2016 eworld. All rights reserved.
//

import WatchKit
import Foundation


class terceraVista: WKInterfaceController {

    @IBOutlet var tipoQueso: WKInterfacePicker!
    var quesos = ["","Mozarela","Cheddar","Parmesano","Sin Queso"]
    var resultado:String = ""
    var index:Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        resultado = context as! String
        
        var pickerItems: [WKPickerItem] = []
        
        for queso in quesos{
            let item = WKPickerItem()
            item.title = queso
            pickerItems.append(item)
        }
        
        tipoQueso.setItems(pickerItems)
        
        // Configure interface objects here.
    }

    
    @IBAction func seleccionar(value: Int) {
        index = value
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    @IBAction func enviarDatos() {
        pushControllerWithName("ingredientes", context: resultado + "Queso: " + quesos[index] + ", ")
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
