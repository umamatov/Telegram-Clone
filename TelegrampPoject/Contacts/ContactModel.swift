//
//  ChatModelss.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 25/03/22.
//

import UIKit
struct Contactmodel {
    var image:UIImage
    var name:String
    var time:String
    
    init() {
        image=UIImage()
        name=""
        time=""
    }
    
    init(image:UIImage,name:String, time:String) {
        self.image=image
        self.name=name
        self.time=time
    }
}
