//
//  ViewController.swift
//  CS541-4
//
//  Created by Admin on 18/10/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate ,UITableViewDataSource{
    
    
    let scores = [10,34,99,51,14,34,76,65,1,34,99,51,14,34,76,65]
    let names = ["A : ","B : ","C : ","D : ","E : ","F : ","G : ","H : ","A1 : ","B1 : ","C1 : ","D1 : ","E1 : ","F1 : ","G1 : ","H1 : "]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (scores.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = 	UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = names[indexPath.row] + String(scores[indexPath.row])
        
        
        
        return (cell)
        
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextscreen(_ sender: Any) {
        
        
        performSegue(withIdentifier: "sendDataFowards", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataFowards"
        {
            let secondVC = segue.destination as! SencodViewController
            
            secondVC.data = self.scores.max()!
        }
        
    }
    
}

