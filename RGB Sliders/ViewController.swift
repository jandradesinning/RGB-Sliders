//
//  ViewController.swift
//  RGB Sliders
//
//  Created by Jose Andrade-Sinning on 10/5/15.
//  Copyright © 2015 JFAS Industries. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        colorSquare.layer.borderColor = UIColor.blackColor().CGColor
        colorSquare.layer.borderWidth = 1
        
        let defaults = NSUserDefaults.standardUserDefaults()
        redSlider.value = defaults.floatForKey("red")
        greenSlider.value = defaults.floatForKey("green")
        blueSlider.value = defaults.floatForKey("blue")
        
        sliderMoved(colorSquare)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderMoved(sender: AnyObject) {
        
        colorSquare.backgroundColor = UIColor(red: CGFloat(redSlider.value), green:CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(1.0))
        
        let defaults = NSUserDefaults.standardUserDefaults()  //1
        defaults.setFloat(redSlider.value, forKey: "red")   //2
        defaults.setFloat(greenSlider.value, forKey: "green")
        defaults.setFloat(blueSlider.value, forKey: "blue")
        defaults.synchronize()    //3
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let newViewController = segue.destinationViewController
        
        if (segue.identifier == "openColor"){
            newViewController.view.backgroundColor = colorSquare.backgroundColor
        }
        
    }
    
}

