//
//  CuartaVista.swift
//  makePizzaAW
//
//  Created by Jorge Andres Moreno Castiblanco on 21/02/16.
//  Copyright © 2016 eworld. All rights reserved.
//

import WatchKit
import Foundation


class CuartaVista: WKInterfaceController {

    
    
    @IBOutlet var tablaIngredientes: WKInterfaceTable!
    
    var ingredientes = ["jamón", "pepperoni", "pavo", "salchicha", "aceituna", "cebolla", "pimiento", "piña", "anchoa", "champiñon"]
    var resultado:String=""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        resultado = context as! String
        
        tablaIngredientes.setNumberOfRows(ingredientes.count, withRowType: "firstItem")
        
        var i = 0;
        
        for index in ingredientes{
            let fila = tablaIngredientes.rowControllerAtIndex(i) as? ingrediente
            
            fila!.labelIngrediente.setText(index)
            i++
        }

        
        // Configure interface objects here.
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        let fila = tablaIngredientes.rowControllerAtIndex(rowIndex) as! ingrediente
        
        if fila.isSelect{
            fila.labelIngrediente.setTextColor(UIColor.whiteColor())
            fila.isSelect = false
        }else{
            fila.labelIngrediente.setTextColor(UIColor.greenColor())
            fila.isSelect = true
        }
        
    }

    @IBAction func enviaIngredientes() {
        let count = ingredientes.count
        var items:[String]=[]
        for index in 0..<count{
            let fila = tablaIngredientes.rowControllerAtIndex(index) as! ingrediente
            if (fila.isSelect){
                items.append(ingredientes[index])
            }
        }
        if(items.count > 0 && items.count <= 5){
            pushControllerWithName("confirmacion", context: resultado + "Ingredientes: (" + items.joinWithSeparator(",") + ")")
        }else{
            let ok = WKAlertAction(title: "OK", style: WKAlertActionStyle.Cancel, handler: { () -> Void in
                
            })
            self.presentAlertControllerWithTitle("Advertencia", message: "Debe seleccionar de 1 a 5 ingredientes", preferredStyle: WKAlertControllerStyle.Alert, actions: [ok])

        }
        
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
