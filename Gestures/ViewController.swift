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
    var rotateGR:UIRotationGestureRecognizer!
    var pinchGR:UIPinchGestureRecognizer!
    
    
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
        
        rotateGR = UIRotationGestureRecognizer(target: self, action: #selector(onRotation))
        viewRotate.addGestureRecognizer(rotateGR)
        
        pinchGR = UIPinchGestureRecognizer(target: self, action: #selector(onPinch))
        viewRotate.addGestureRecognizer(pinchGR)
    }
    
    @objc func onSwipeUP()
    {
        lblText.text = "Swipe UP"
    }
    
    
    @objc func onSwipeDown()
    {
        lblText.text = "Swipe Down"
    }
    
    @objc func onRotation()
    {
        lblText.text = "ROTATION"
        viewRotate.transform = viewRotate.transform.rotated(by: rotateGR.rotation)
        rotateGR.rotation = 0
    }
    
    @objc func onPinch()
    {
        lblText.text = "PINCH"
        viewRotate.transform = viewRotate.transform.scaledBy(x: pinchGR.scale, y: pinchGR.scale)
        pinchGR.scale = 1
    }
}

