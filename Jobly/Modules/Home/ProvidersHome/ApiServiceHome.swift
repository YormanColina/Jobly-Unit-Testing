//
//  ApiService.swift
//  Jobly
//
//  Created by Apple on 15/06/22.
//

import Foundation
import Alamofire
import ObjectMapper

protocol ApiServiceHomeProtocol {
    func consumeServiceOfHomeWith(completion: @escaping (Home?) -> Void)
}

class ApiServiceHome: ApiServiceHomeProtocol {
    private let endPoint: URL = URL(string: "https://demo4898107.mockable.io/alamofire/testing")!
    
    func consumeServiceOfHomeWith(completion: @escaping (Home?) -> Void) {
        AF.request(endPoint).responseJSON { response in
            guard let data = response.value as? [String: Any], let home = Mapper<Home>().map(JSON: data) else {
                completion(nil)
                return
            }
            completion(home)
        }
    }
}

