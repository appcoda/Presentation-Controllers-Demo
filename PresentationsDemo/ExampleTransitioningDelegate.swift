//
//  ExampleTransitioningDelegate.swift
//  PresentationsDemo
//
//  Created by Joyce Echessa on 5/29/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class ExampleTransitioningDelegate: NSObject, UIViewControllerTransitioningDelegate {
    
    func presentationControllerForPresentedViewController(presented: UIViewController, presentingViewController presenting: UIViewController!, sourceViewController source: UIViewController) -> UIPresentationController? {
        let presentationController = ExamplePresentationController(presentedViewController:presented, presentingViewController:presenting)
    
        return presentationController
    }
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        var animationController = ExampleAnimatedTransitioning()
        animationController.isPresentation = true
        return animationController
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        var animationController = ExampleAnimatedTransitioning()
        animationController.isPresentation = false
        return animationController
    }
   
}
