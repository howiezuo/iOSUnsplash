//
//  UnsplashAPI.swift
//  iOSUnsplash
//
//  Created by Zuo Hao on 2016/10/17.
//  Copyright © 2016 Howie Zuo. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class UnsplashAPI {
    
    static let API_URL = "https://api.unsplash.com/"
    static let HEADERS: HTTPHeaders = [
        "Accept-Version": "v1",
        "Authorization": "Client-ID bb0b8493dba89c5b8765bdca724c00c3766b20971017f3315536ba19856e6287"
    ]
    
    func getPhotos(callback: @escaping (_ result: JSON) -> Void) {
        let url = UnsplashAPI.API_URL + "photos?per_page=20"
        Alamofire.request(url, headers: UnsplashAPI.HEADERS)
        .responseJSON { (response) in
            
            let json = JSON(response.result.value)
            
            callback(json)
        }
    }
}
