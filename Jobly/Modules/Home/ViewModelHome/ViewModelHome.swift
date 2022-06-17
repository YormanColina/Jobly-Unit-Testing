//
//  HomeController.swift
//  Jobly
//
//  Created by Jyferson Colina on 19/03/22.
//

import Foundation
import ObjectMapper
import Alamofire

class HomeViewModel {
    var apiService: ApiServiceHomeProtocol
    var home: Home = Home()
    
    init(apiService: ApiServiceHomeProtocol = ApiServiceHome()) {
        self.apiService = apiService
    }
    
    func configurateHome(completion: @escaping () -> Void) {
        apiService.consumeServiceOfHomeWith { home in
            guard let home = home else {
                return
            }
            self.home = home
            completion()
        }
    }
}

//testear el completion de la func
// 


