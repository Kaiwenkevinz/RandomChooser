//
//  SecondViewController.swift
//  TODO
//
//  Created by Kaiwen Zhang on 2017-12-08.
//  Copyright © 2017 Kaiwen Zhang. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBAction func myButton(_ sender: Any) {
        
        if list.count == 0 {
            
            let alert = UIAlertController(title: "Your plans are empty", message: "Let's add more plans", preferredStyle: .alert)
            
            //OK button
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in})
            
           
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            
        }
        else {
            
            let alert_deciding = UIAlertController(title: nil, message: "3 2 1 ...", preferredStyle: .alert)
            let alert_2 = UIAlertController(title: nil, message: "Done!", preferredStyle: .alert)
            
            
            // generate random number
            let n = arc4random_uniform(UInt32(list.count))
            list_2.append(list[Int(n)])
            list.remove(at: Int(n))
            
            present(alert_deciding, animated: true, completion: nil)
            var when = DispatchTime.now() + 2
            DispatchQueue.main.asyncAfter(deadline: when){
                // your code with delay
                alert_deciding.dismiss(animated: true, completion: nil)
                self.present(alert_2, animated: true, completion: nil)
                // change to desired number of seconds
                when = DispatchTime.now() + 1
                DispatchQueue.main.asyncAfter(deadline: when){
                    // your code with delay
                    alert_2.dismiss(animated: true, completion: nil)
                }
            }
            
        }
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

