//
//  gamingpageViewController.swift
//  Tap Me
//
//  Created by Mohammad Adil on 26/08/19.
//  Copyright © 2019 Mohammad Yasir. All rights reserved.
import UIKit
import RealmSwift


var arr : [String] = []
var buttonTimer = Timer()
var timeArr : [String] = []
var score : Int = 0
var time = 0

class gamingpageViewController: UIViewController {
    
    @IBOutlet var gamingView: UIView!
    @IBOutlet weak var gamingName: UILabel!
    @IBOutlet weak var gamingId: UILabel!
    @IBOutlet weak var pressButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
     var timer = Timer()
    
    let realm = try! Realm()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        gamingName.text = enteredName
        gamingId.text = enteredId
        pressButton.isEnabled = true

    }
    
    @IBAction func pressMe(_ sender: UIButton) {
        arr.append("pressed")
        let numOfpressed = arr.count
        score = score + 5
        scoreLabel.text = "\(score)"
        print(numOfpressed)
        timer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(doThis), userInfo: nil, repeats: false)
        
    }
    @objc func doThis(){
            pressButton.isEnabled = false
            buttonTimer.invalidate()

    }
    
    @IBAction func saveData(_ sender: UIButton) {
        let obj = Detail(name: gamingName.text!, score: Int(scoreLabel.text!)!, id: gamingId.text!)
        try! realm.write {
            realm.add(obj)
        }
        print(Realm.Configuration.defaultConfiguration.fileURL)
        score = 0
        performSegue(withIdentifier: "ptptptptp", sender: self)
    }
    
    @IBAction func back(_ sender: UIButton) {
        performSegue(withIdentifier: "backkkk", sender: self)
    }
}
