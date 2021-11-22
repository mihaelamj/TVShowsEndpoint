//
//  Endpoint+URLEncoding.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//


import Alamofire

public extension Endpoint {
  var urlEncoding: URLEncoding {
    switch self {
      
// MARK: - User -
      
    case .register:
      return URLEncoding.default
    case .login:
      return URLEncoding.default
    case .updateUserImage:
      return URLEncoding.default
    case .me:
      return URLEncoding.default
      
// MARK: - Show -
      
    case .shows:
      return URLEncoding.default
    case .show:
      return URLEncoding.default
    case .topRated:
      return URLEncoding.default
      
// MARK: - Review -
      
    case .createReview:
      return URLEncoding.default
    case .deleteReview:
      return URLEncoding.default
    case .updateReview:
      return URLEncoding.default
    case .reviews:
      return URLEncoding.default
    }
  }
}
