//
//  ThirdViewController.swift
//  TODO
//
//  Created by Kaiwen Zhang on 2017-12-10.
//  Copyright © 2017 Kaiwen Zhang. All rights reserved.
//

import UIKit

var list_2 = [String]()

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet weak var myTableView_2: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (list_2.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell_2")
        cell.textLabel?.text = list_2[indexPath.row]
        
        return(cell)
    }
    

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        
        //  delete item
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list_2.remove(at: indexPath.row)
            myTableView_2.reloadData()
        }
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView_2.reloadData()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Let's do this task"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
