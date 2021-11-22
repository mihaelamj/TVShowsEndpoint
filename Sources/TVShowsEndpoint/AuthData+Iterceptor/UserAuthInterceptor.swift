//
//  UserAuthInterceptor.swift
//
//  Created by iMacPro on 17.11.2021..
//

import Foundation
import Alamofire

public class UserAuthInterceptor: RequestInterceptor {
  
  public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) {
    var urlRequest = urlRequest
    urlRequest.setValue(Constants.Interceptor.acceptFormat, forHTTPHeaderField: Constants.Interceptor.accept)
    
    // INFO: fetch saved `UserAuthData` -
    guard let userAuthData = UserAuthData.fromRepository() else {
      completion(.success(urlRequest))
      return
    }
    
    // INFO: set data to the URLRequest -
    userAuthData.update(urlRequest: &urlRequest)
    
    completion(.success(urlRequest))
  }
}

