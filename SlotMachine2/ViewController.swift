//
//  ViewController.swift
//  SlotMachine2
//
//  Created by Leytzher on 1/20/15.
//  Copyright (c) 2015 Leytzher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // PROPERTIES
    // *********************************************
  
    // VARIABLES
    // *********
    var firstContainer: UIView!  //unwrapped optional
    var secondContainer : UIView!
    var thirdContainer : UIView!
    var fourthContainer : UIView!
    var titleLabel : UILabel!
    
    
    // CONSTANTS
    // *********
    let kMarginForView:CGFloat = 10.0  //CGFloat makes either a double or a float
    let kSixth: CGFloat = 1.0/6.0
    
    
    // FUNCTIONS
    // *********************************************
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setupContainerViews()
        self.setupFirstContainer(self.firstContainer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Custom Functions
    //*****************
    
    
    //Note: all containers have a View by default.
    func setupContainerViews(){
        self.firstContainer = UIView(frame: CGRect(
            x: self.view.bounds.origin.x + kMarginForView,
            y: self.view.bounds.origin.y,
            width: self.view.bounds.width - (kMarginForView * 2),
            height: self.view.bounds.height * (kSixth)))
        self.firstContainer.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.firstContainer)
        
        self.secondContainer = UIView(frame: CGRect(
            x: self.view.bounds.origin.x + kMarginForView,
            y: self.firstContainer.frame.height,
            width: self.view.bounds.width - (kMarginForView*2),
            height: self.view.bounds.height * (3 * kSixth)))
        self.secondContainer.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.secondContainer)
        
        self.thirdContainer = UIView(frame: CGRect(
            x: self.view.bounds.origin.x + kMarginForView,
            y: self.firstContainer.frame.height + self.secondContainer.frame.height,
            width: self.view.bounds.width - (2 * kMarginForView),
            height: self.view.bounds.height * (kSixth)))
        self.thirdContainer.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(self.thirdContainer)
        
        self.fourthContainer = UIView(frame: CGRect(
            x: self.view.bounds.origin.x + kMarginForView,
            y: self.firstContainer.frame.height + self.secondContainer.frame.height + thirdContainer.frame.height,
            width: self.view.bounds.width - (2 * kMarginForView),
            height: self.view.bounds.height * (kSixth)))
        self.fourthContainer.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.fourthContainer)
    }
    
    
    func setupFirstContainer(containerView: UIView){
        self.titleLabel = UILabel()
        self.titleLabel.text = "Super Slots"
        self.titleLabel.textColor = UIColor.yellowColor()
        self.titleLabel.font = UIFont(name: "MarkerFelt-Wide", size: 40)
        self.titleLabel.sizeToFit()
        self.titleLabel.center = containerView.center
        containerView.addSubview(self.titleLabel)
    }

}

