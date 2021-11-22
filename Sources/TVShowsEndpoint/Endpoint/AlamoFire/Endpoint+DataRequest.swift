//
//  Endpoint+DataRequest.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//

import Alamofire

public extension Endpoint {
  var request: DataRequest {
      let result = Alamofire.AF.request(fullPath, method: httpMethod, parameters: parameters, encoding: urlEncoding, interceptor: interceptor)
    return result
  }
}
