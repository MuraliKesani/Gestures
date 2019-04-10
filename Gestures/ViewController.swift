//
//  ViewController.swift
//  Gestures
//
//  Created by Murali on 4/10/19.
//  Copyright © 2019 Murali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
@IBOutlet var lblText: UILabel!
@IBOutlet var viewRotate: UIView!
    
    var swipeUPGR:UISwipeGestureRecognizer!
    var swipeDOWNGR:UISwipeGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func createUI()
    {
        swipeUPGR = UISwipeGestureRecognizer(target: self, action: #selector(onSwipeUP))
        swipeUPGR.direction = .up
        swipeUPGR.numberOfTouchesRequired = 1
        viewRotate.addGestureRecognizer(swipeUPGR)
        
        
        swipeDOWNGR = UISwipeGestureRecognizer(target: self, action: #selector(onSwipeDown))
        swipeDOWNGR.direction = .down
        swipeDOWNGR.numberOfTouchesRequired = 1
        viewRotate.addGestureRecognizer(swipeDOWNGR)
    }
    
    @objc func onSwipeUP()
    {
        lblText.text = "Swipe UP"
    }
    
    
    @objc func onSwipeDown()
    {
        lblText.text = "Swipe Down"
    }
    
    

}

