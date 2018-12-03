//
//  tableViewController.swift
//  HarmonyUiKit
//
//  Created by Nayananga Muhandiram on 12/3/18.
//  Copyright © 2018 nexgenits. All rights reserved.
//

import UIKit

class homeViewController: ViewController {

//    @IBOutlet weak var loginButtonView: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.register(UINib(nibName: "homeTableViewCell", bundle: nil), forCellReuseIdentifier: "homeTableViewCell")
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 100
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    
}

extension homeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableViewCell") as! homeTableViewCell
        return cell
    }
}


