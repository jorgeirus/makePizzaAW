//
//  primeraVista.swift
//  makePizzaAW
//
//  Created by Jorge Andres Moreno Castiblanco on 19/02/16.
//  Copyright © 2016 eworld. All rights reserved.
//

import WatchKit
import Foundation


class primeraVista: WKInterfaceController {
    
    @IBOutlet var tamanioPizza: WKInterfacePicker!
    var tamanios = ["","Pequeña","Mediana","Grande"]
    var index:Int = 0

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        var pickerItems: [WKPickerItem] = []
        
        for tamanio in tamanios{
            let item = WKPickerItem()
            item.title = tamanio
            pickerItems.append(item)
        }
        
        tamanioPizza.setItems(pickerItems)

        
        // Configure interface objects here.
    }

  
    @IBAction func seleccionar(value: Int) {
        index = value
    }
    
    @IBAction func enviarDatos() {
        self.pushControllerWithName("tipoMasa", context: "Tamaño: " + tamanios[index] + ", ")
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
