//
//  ViewController.swift
//  EchoVision
//
//  Created by Taranvir Waraich on 4/8/17.
//  Copyright © 2017 EchoVision. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var camera: CVVideoCamera!
    
    @IBOutlet weak var frame: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        camera = CVVideoCamera(controller: self, andImageView: frame)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

