//
//  ExampleViewController.swift
//  PresentationsDemo
//
//  Created by Joyce Echessa on 4/27/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {
    
    var containerView: UIView = UIView()
    var closeButton: UIButton = UIButton()
    var titleLabel: UILabel = UILabel()
    var infoLabel: UILabel = UILabel()
    
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        modalPresentationStyle = UIModalPresentationStyle.Custom
        createUI()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createUI() {
        
        titleLabel.text = "Title";
        infoLabel.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
        
        containerView.setTranslatesAutoresizingMaskIntoConstraints(false)
        containerView.backgroundColor = UIColor(white: 0.0, alpha: 0.8)
        view.addSubview(containerView)
        
        // Set some constants to use when creating constraints
        let titleFontSize: CGFloat = view.bounds.size.width > 667.0 ? 40.0 : 22.0
        let bodyFontSize: CGFloat = view.bounds.size.width > 667.0 ? 20.0 : 12.0
        
        titleLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        titleLabel.backgroundColor = UIColor.clearColor()
        titleLabel.font = UIFont.boldSystemFontOfSize(titleFontSize)
        titleLabel.textColor = UIColor.whiteColor()
        containerView.addSubview(titleLabel)
        
        infoLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        infoLabel.backgroundColor = UIColor.clearColor()
        infoLabel.font = UIFont.boldSystemFontOfSize(bodyFontSize)
        infoLabel.textColor = UIColor.whiteColor()
        infoLabel.numberOfLines = 0;
        containerView.addSubview(infoLabel)
        
        closeButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        closeButton.setTitle("Close", forState: UIControlState.Normal)
        closeButton.tintColor = UIColor.whiteColor()
        closeButton.titleLabel!.font = UIFont.systemFontOfSize(bodyFontSize)
        closeButton.addTarget(self, action: "close:", forControlEvents: UIControlEvents.TouchUpInside)
        containerView.addSubview(closeButton)
        
        
        let views: [String : AnyObject] = [
            "containerView": containerView,
            "titleLabel": titleLabel,
            "infoLabel": infoLabel,
            "closeButton": closeButton]
        
        view.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "H:|[containerView]|",
                options: NSLayoutFormatOptions(0),
                metrics: nil,
                views: views))
        
        view.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "V:|[containerView]|",
                options: NSLayoutFormatOptions(0),
                metrics: nil,
                views: views))
        
        containerView.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "H:|[titleLabel]|",
                options: NSLayoutFormatOptions(0),
                metrics: nil,
                views: views))
        
        containerView.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "H:|[infoLabel]|",
                options: NSLayoutFormatOptions(0),
                metrics: nil,
                views: views))

        containerView.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "H:|[closeButton]|",
                options: NSLayoutFormatOptions(0),
                metrics: nil,
                views: views))
        
        containerView.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "V:|-(>=30)-[titleLabel]-" +
                "[infoLabel]-[closeButton]-(>=10)-|",
                options: NSLayoutFormatOptions(0),
                metrics: nil,
                views: views))
        
    }
    
    func close(sender: UIButton) {
        presentingViewController!.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
