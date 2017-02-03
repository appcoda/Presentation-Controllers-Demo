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
        
        modalPresentationStyle = UIModalPresentationStyle.custom
        createUI()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createUI() {
        
        titleLabel.text = "Title";
        infoLabel.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = UIColor(white: 0.0, alpha: 0.8)
        view.addSubview(containerView)
        
        // Set some constants to use when creating constraints
        let titleFontSize: CGFloat = view.bounds.size.width > 667.0 ? 40.0 : 22.0
        let bodyFontSize: CGFloat = view.bounds.size.width > 667.0 ? 20.0 : 12.0
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.backgroundColor = UIColor.clear
        titleLabel.font = UIFont.boldSystemFont(ofSize: titleFontSize)
        titleLabel.textColor = UIColor.white
        containerView.addSubview(titleLabel)
        
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.backgroundColor = UIColor.clear
        infoLabel.font = UIFont.boldSystemFont(ofSize: bodyFontSize)
        infoLabel.textColor = UIColor.white
        infoLabel.numberOfLines = 0;
        containerView.addSubview(infoLabel)
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.setTitle("Close", for: UIControlState())
        closeButton.tintColor = UIColor.white
        closeButton.titleLabel!.font = UIFont.systemFont(ofSize: bodyFontSize)
        closeButton.addTarget(self, action: #selector(ExampleViewController.close(_:)), for: UIControlEvents.touchUpInside)
        containerView.addSubview(closeButton)
        
        
        let views: [String : AnyObject] = [
            "containerView": containerView,
            "titleLabel": titleLabel,
            "infoLabel": infoLabel,
            "closeButton": closeButton]
        
        view.addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat:
                "H:|[containerView]|",
                options: NSLayoutFormatOptions(rawValue: 0),
                metrics: nil,
                views: views))
        
        view.addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat:
                "V:|[containerView]|",
                options: NSLayoutFormatOptions(rawValue: 0),
                metrics: nil,
                views: views))
        
        containerView.addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat:
                "H:|[titleLabel]|",
                options: NSLayoutFormatOptions(rawValue: 0),
                metrics: nil,
                views: views))
        
        containerView.addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat:
                "H:|[infoLabel]|",
                options: NSLayoutFormatOptions(rawValue: 0),
                metrics: nil,
                views: views))

        containerView.addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat:
                "H:|[closeButton]|",
                options: NSLayoutFormatOptions(rawValue: 0),
                metrics: nil,
                views: views))
        
        containerView.addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat:
                "V:|-(>=30)-[titleLabel]-[infoLabel]-[closeButton]-(>=10)-|",
                options: NSLayoutFormatOptions(rawValue: 0),
                metrics: nil,
                views: views))
        
    }
    
    func close(_ sender: UIButton) {
        presentingViewController!.dismiss(animated: true, completion: nil)
    }
    
}
