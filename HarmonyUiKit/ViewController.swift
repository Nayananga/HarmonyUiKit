//
//  ViewController.swift
//  HarmonyUiKit
//
//  Created by Nayananga Muhandiram on 12/1/18.
//  Copyright © 2018 nexgenits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var loginButtonView: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.loginButtonSetup()
    }
    
  
    func loginButtonSetup(){
        self.loginButtonView.layer.shadowColor = UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 	0.9).cgColor
        self.loginButtonView.layer.shadowRadius = 3.0
        self.loginButtonView.layer.shadowOpacity = 0.2
        self.loginButtonView.layer.shadowOffset = CGSize(width: 0.0, height: 12.0)
        self.loginButtonView.layer.cornerRadius = self.loginButtonView.bounds.size.height/2
        
    }
    
}

