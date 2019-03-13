//
//  ViewController.swift
//  awesome-iconic
//
//  Created by Admin on 12/3/2562 BE.
//  Copyright © 2562 th.ac.kmutnb.www. All rights reserved.
//

import UIKit
import SSBouncyButton
import pop

class ViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var viewForLayer: UIView!
    @IBOutlet weak var viewForLayer2: UIView!
    
    @IBAction func actionBtn(_ sender: Any) {
        if let anim = POPSpringAnimation(propertyNamed: kPOPLayerBounds) {
            anim.toValue = NSValue(cgRect: CGRect(x: 0, y: 0, width: 300, height: 200))
            layer.pop_add(anim, forKey: "asd")
        }
    }
    @IBAction func actionDeSizeBtn(_ sender: Any) {
        if let anim = POPSpringAnimation(propertyNamed: kPOPLayerBounds) {
            anim.toValue = NSValue(cgRect: CGRect(x: 0, y: 0, width: 150, height: 75))
            layer.pop_add(anim, forKey: "asd")
        }
    }
    @IBAction func slideBtn(_ sender: Any) {
        if let anim = POPDecayAnimation(propertyNamed: kPOPLayerPositionX) {
            anim.velocity = -300.0
            layer2.pop_add(anim, forKey: "slide")
        }
    }
    @IBAction func slideRightBtn(_ sender: Any) {
        if let anim = POPDecayAnimation(propertyNamed: kPOPLayerPositionX) {
            anim.velocity = 300.0
            layer2.pop_add(anim, forKey: "slide")
        }
    }
    @IBAction func fadeInBtn(_ sender: Any) {
        if let anim = POPBasicAnimation(propertyNamed: kPOPViewAlpha) {
            anim.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
            anim.fromValue = 0.0
            anim.toValue = 1.0
            view.pop_add(anim, forKey: "fade")
        }
    }
    
    var layer: CALayer {
        return viewForLayer.layer
    }
    var layer2: CALayer {
        return viewForLayer2.layer
    }
    
    let anim = POPSpringAnimation()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLayer()
    }
    
    func setUpLayer() {
        layer.backgroundColor = UIColor(red:0.97, green:0.65, blue:0.72, alpha:1.0).cgColor
        layer.borderWidth = 50.0
        layer.borderColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 10.0
    }


}

