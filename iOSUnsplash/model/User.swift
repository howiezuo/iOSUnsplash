//
//  User.swift
//  iOSUnsplash
//
//  Created by Zuo Hao on 2016/10/18.
//  Copyright © 2016 Howie Zuo. All rights reserved.
//

import Foundation
import ObjectMapper


class User: Mappable {
    
    var id: String?
    var username: String?
    var name: String?
    var portfolio_url: String?
    
    var profile_image: ProfileImage?
    var links: Links?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id              <- map["id"]
        username        <- map["username"]
        name            <- map["name"]
        portfolio_url   <- map["portfolio_url"]
        profile_image   <- map["profile_image"]
        links           <- map["links"]
    }
    
}
