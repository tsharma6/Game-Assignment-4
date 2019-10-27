//
//  SencodViewController.swift
//  CS541-4
//
//  Created by Admin on 18/10/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class SencodViewController: UIViewController {

    var data:Int = 0;
    
    @IBOutlet weak var highestscoretxt: UILabel!
    @IBOutlet weak var ilbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        highestscoretxt.text = "Highest Score : \(data)"
        
    
        // Do any additional setup after loading the view.
    
        inst()
    }
    

    
    
    
    func inst()
    {
       
        
        ilbl.text = "Instructions \n"
        +
        "1. Press Z to move down to your stations \n"
        +
        "2.Press M to shoot\n"
        +
        "3.Press Array keys to move \n"
        +
        "4.Press Esc to Quit \n"
        
    }
  

}
