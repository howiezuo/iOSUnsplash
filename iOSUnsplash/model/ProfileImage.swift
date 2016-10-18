//
//  ProfileImage.swift
//  iOSUnsplash
//
//  Created by Zuo Hao on 2016/10/18.
//  Copyright © 2016 Howie Zuo. All rights reserved.
//

import Foundation
import ObjectMapper


class ProfileImage: Mappable {
    
    var small: String?
    var medium: String?
    var large: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        small   <- map["small"]
        medium  <- map["medium"]
        large   <- map["large"]
    }
    
}
