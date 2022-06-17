//
//  ApiServicesFake.swift
//  JoblyTests
//
//  Created by Apple on 17/06/22.
//

import Foundation
import ObjectMapper
@testable import Jobly

class ApiServicesFake: ApiServiceHomeProtocol {

    func consumeServiceOfHomeWith(completion: @escaping (Home?) -> Void) {
        let bundle = Bundle(for: type(of: self))
        if let path = bundle.url(forResource: "MockHome", withExtension: "json") {
            do {
                let data = try Data(contentsOf: path)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let jsonResult = jsonResult as? Dictionary<String, Any> {
                    let home = Mapper<Home>().map(JSON: jsonResult)
                    completion(home)
                }
            } catch {
                completion(nil)
            }
        }
    }
}

