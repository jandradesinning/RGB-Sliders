//
//  secondaryViewController.swift
//  RGB Sliders
//
//  Created by Jose Andrade-Sinning on 10/6/15.
//  Copyright © 2015 JFAS Industries. All rights reserved.
//

import Foundation
import UIKit

class secondaryViewController: UIViewController{
    
    
    @IBOutlet weak var tintedActivityIndicatorView: UIActivityIndicatorView!
    
    @IBOutlet weak var activitySwitch: UISwitch!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        configureTintedActivityIndicatorView()
        
        
    }
    
    func configureTintedActivityIndicatorView() {
        
        tintedActivityIndicatorView.activityIndicatorViewStyle = .Gray
        
        tintedActivityIndicatorView.color = UIColor.blackColor()
        
        tintedActivityIndicatorView.startAnimating()
        
    }
    
    @IBAction func enableActivityIndicator() {
        
        activitySwitch.on ? tintedActivityIndicatorView.startAnimating():tintedActivityIndicatorView.stopAnimating()
        
        
    }
    
}