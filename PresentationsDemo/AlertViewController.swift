//
//  AlertViewController.swift
//  PresentationsDemo
//
//  Created by Joyce Echessa on 4/6/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func showAlertWasTapped(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Appcoda", message: "Message in alert dialog", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let deleteAction = UIAlertAction(title: "Delete", style: UIAlertActionStyle.destructive, handler: {(alert :UIAlertAction!) in
            print("Delete button tapped")
        })
        alertController.addAction(deleteAction)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(alert :UIAlertAction!) in
            print("OK button tapped")
        })
        alertController.addAction(okAction)
        
        alertController.popoverPresentationController?.sourceView = view
        alertController.popoverPresentationController?.sourceRect = sender.frame
        
        present(alertController, animated: true, completion: nil)
        
    }
}
