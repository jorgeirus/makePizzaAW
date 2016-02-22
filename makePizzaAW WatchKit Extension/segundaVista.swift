//
//  segundaVista.swift
//  makePizzaAW
//
//  Created by Jorge Andres Moreno Castiblanco on 19/02/16.
//  Copyright © 2016 eworld. All rights reserved.
//

import WatchKit
import Foundation


class segundaVista: WKInterfaceController {

    @IBOutlet var tipoMasa: WKInterfacePicker!
    
    var masas = ["","Delgada","Crujiente","Gruesa"]
    
    var resultado:String = ""
    
    var index:Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        resultado = context as! String
        
        var pickerItems: [WKPickerItem] = []
        
        for masa in masas{
            let item = WKPickerItem()
            item.title = masa
            pickerItems.append(item)
        }
        
        tipoMasa.setItems(pickerItems)

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
        pushControllerWithName("tipoQueso", context: resultado + "Masa: " + masas[index] + ", ")
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
