//
//  Constants.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//

public struct Constants {
  
  public struct RestAPI {
    static let baseURLString = "https://tv-shows.infinum.academy"
  }
  
  public struct Interceptor {
    static let acceptFormat = "application/json" // used in UserAuthInterceptor
    static let accept = "accept" // used in UserAuthInterceptor
    
    static let tokenType = "token-type" // used in UserAuthData
  }
}
