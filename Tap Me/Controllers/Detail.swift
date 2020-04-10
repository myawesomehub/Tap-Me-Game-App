//
//  Detail.swift
//  Tap Me
//
//  Created by Mohammad Adil on 28/08/19.
//  Copyright © 2019 Mohammad Yasir. All rights reserved.
//

import Foundation
import RealmSwift

class Detail: Object {
    @objc dynamic var name : String = ""
    @objc dynamic var score : Int = 0
    @objc dynamic var id : String = ""
    
    convenience init(name:String,score:Int,id:String){
        
        self.init()
        self.name = name
        self.score = score
        self.id = id
        
    }
    
}

