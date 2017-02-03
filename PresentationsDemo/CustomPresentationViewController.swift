//
//  CustomPresentationViewController.swift
//  PresentationsDemo
//
//  Created by Joyce Echessa on 4/6/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class CustomPresentationViewController: UIViewController {
    
    let exampleTransitionDelegate = ExampleTransitioningDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func infoButtonWasTapped(_ sender: UIButton) {
        transitioningDelegate = exampleTransitionDelegate
        let vc = ExampleViewController()
        vc.transitioningDelegate = exampleTransitionDelegate
        present(vc, animated: true, completion: nil)
    }
}
