//
//  UnsplashAPI.swift
//  iOSUnsplash
//
//  Created by Zuo Hao on 2016/10/17.
//  Copyright © 2016 Howie Zuo. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift
import ObjectMapper


class APIClient {
    
    static let API_URL = "https://api.unsplash.com/"
    static let HEADERS: HTTPHeaders = [
        "Accept-Version": "v1",
        "Authorization": "Client-ID bb0b8493dba89c5b8765bdca724c00c3766b20971017f3315536ba19856e6287"
    ]
    
    static func getPhotos() -> Observable<[Photo]> {
        return Observable.create { (observer) -> Disposable in
            
            let url = APIClient.API_URL + "photos?per_page=20"
            let request = Alamofire.request(url, headers: APIClient.HEADERS)
                .responseJSON { (response) in
                    
                    let photos = Mapper<Photo>().mapArray(JSONObject: response.result.value)
                    observer.onNext(photos!)
                    observer.onCompleted()
            }
            
            return Disposables.create {
                request.cancel()
            }
        }
    }
}
