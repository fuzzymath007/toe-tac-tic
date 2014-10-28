//
//  ViewController.swift
//  toe-tac-tic
//
//  Created by Matthew Chess on 10/28/14.
//  Copyright (c) 2014 Matthew Chess. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var turn = 1
    
    
    @IBOutlet var button0: UIButton!

    @IBAction func buttonPressed(sender: AnyObject) {
        
        %
        
        var image = UIImage(named: "cross.png")
        sender.setImage(image, forState: .Normal)
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

