//
//  ExampleTransitioningDelegate.swift
//  PresentationsDemo
//
//  Created by Joyce Echessa on 5/29/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class ExampleTransitioningDelegate: NSObject, UIViewControllerTransitioningDelegate {
    
    private func presentationController(forPresented presented: UIViewController, presenting: UIViewController??, source: UIViewController) -> UIPresentationController? {
        let presentationController = ExamplePresentationController(presentedViewController:presented, presenting:presenting!)
    
        return presentationController
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animationController = ExampleAnimatedTransitioning()
        animationController.isPresentation = true
        return animationController
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animationController = ExampleAnimatedTransitioning()
        animationController.isPresentation = false
        return animationController
    }
   
}
