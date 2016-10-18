//
//  Urls.swift
//  iOSUnsplash
//
//  Created by Zuo Hao on 2016/10/18.
//  Copyright © 2016 Howie Zuo. All rights reserved.
//

import Foundation
import ObjectMapper


class Urls: Mappable {
    
    var raw: String?
    var full: String?
    var regular: String?
    var small: String?
    var thumb: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        raw     <- map["raw"]
        full    <- map["full"]
        regular <- map["regular"]
        small   <- map["small"]
        thumb   <- map["thumb"]
    }
    
}
