//
//  Photo.swift
//  iOSUnsplash
//
//  Created by Zuo Hao on 2016/10/18.
//  Copyright © 2016 Howie Zuo. All rights reserved.
//

import Foundation
import ObjectMapper


class Photo: Mappable {
    
    var id: String?
    var width: Int?
    var height: Int?
    var color: String?
    var likes: Int?
    var liked_by_user: Bool?
    
    var user: User?
    var links: Links?
    var urls: Urls?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id              <- map["id"]
        width           <- map["width"]
        height          <- map["height"]
        color           <- map["color"]
        likes           <- map["likes"]
        liked_by_user   <- map["liked_by_user"]
        user            <- map["user"]
        links           <- map["links"]
        urls            <- map["urls"]
    }
    
}
