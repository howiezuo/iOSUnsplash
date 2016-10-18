//
//  Links.swift
//  iOSUnsplash
//
//  Created by Zuo Hao on 2016/10/18.
//  Copyright © 2016 Howie Zuo. All rights reserved.
//

import Foundation
import ObjectMapper


class Links: Mappable {
    
    var own: String?    // self
    var html: String?
    var photos: String?
    var likes: String?
    var portfolio: String?
    var download: String?
    var download_location: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        own                 <- map["self"]
        html                <- map["html"]
        photos              <- map["photos"]
        likes               <- map["likes"]
        portfolio           <- map["ortfolio"]
        download            <- map["ownload"]
        download_location   <- map["download_location"]
    }
    
}
