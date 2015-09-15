//
//  TiketAPI.swift
//  tiket-com-swift
//
//  Created by Achmad Fatoni on 9/14/15.
//  Copyright (c) 2015 Achmad Fatoni. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class TiketAPI {
    
    //secret key : "64de419c65901078dc7d026194357579"
    
    func getTiketToken() -> Void {
        var urlString = "http://api.sandbox.tiket.com/apiv1/payexpress"

        var param = [
            "method" : "getToken",
            "secretkey" : "64de419c65901078dc7d026194357579",
            "output" : "json"
        ]
        Alamofire.request(.GET, urlString, parameters : param)
            .responseJSON { request, response, data, error in
                println("---------- REQUEST ----------")
                println(request)
                println("\n")
                
                println("---------- RESPONSE ----------")
                println(response)
                println("\n")
                
                println("---------- DATA ----------")
                println(data)
                print("\n")
                
                println("---------- ERROR ----------")
                println(error)
        }
    }
}
