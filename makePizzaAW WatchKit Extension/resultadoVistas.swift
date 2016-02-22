//
//  resultadoVistas.swift
//  makePizzaAW
//
//  Created by Jorge Andres Moreno Castiblanco on 21/02/16.
//  Copyright © 2016 eworld. All rights reserved.
//

import WatchKit
import Foundation


class resultadoVistas: WKInterfaceController {

    @IBOutlet var resultados: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        resultados.setText(context as! String)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    @IBAction func enviar() {
        let ok = WKAlertAction(title: "OK", style: WKAlertActionStyle.Cancel, handler: { () -> Void in
            
        })
        self.presentAlertControllerWithTitle("EXCELENTE", message: "Tu pizza se esta cocinando...", preferredStyle: WKAlertControllerStyle.Alert, actions: [ok])
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
