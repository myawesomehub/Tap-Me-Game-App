//
//  TableViewController.swift
//  Tap Me
//
//  Created by Mohammad Adil on 28/08/19.
//  Copyright © 2019 Mohammad Yasir. All rights reserved.
//

import UIKit
import RealmSwift

var arrr : [String] = []

//var cells : Int = 1
class TableViewController: UITableViewController {

    let realm = try! Realm()
    
    @IBOutlet var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  realm.objects(Detail.self).filter("score >= 200").count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as!TableViewCell
        let getingBack = realm.objects(Detail.self).filter("score >= 200")
        
            cell.nameOutlet.text = getingBack[indexPath.row].name
            cell.idOutlet.text = getingBack[indexPath.row].id
            cell.scoreOutlet.text = String(getingBack[indexPath.row].score)
        
         return cell
    }
    @IBAction func cancel(_ sender: UIBarButtonItem) {
    
        performSegue(withIdentifier: "mmmmm", sender: self)
    }
    
    
}
