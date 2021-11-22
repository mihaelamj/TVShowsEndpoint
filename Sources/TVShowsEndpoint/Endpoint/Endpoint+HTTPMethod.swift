//
//  Endpoint+HTTPMethod.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//

import Alamofire

public extension Endpoint {
  var httpMethod: HTTPMethod {
    switch self {
      
      // MARK: - User -
      
    case .register:
      return .post
    case .login:
      return .post
    case .updateUserImage:
      return .put
    case .me:
      return .get
      
      // MARK: - Show -
      
    case .shows:
      return .get
    case .show:
      return .get
    case .topRated:
      return .get
      
      // MARK: - Review -
      
    case .createReview:
      return .post
    case .deleteReview:
      return .delete
    case .updateReview:
      return .patch
    case .reviews:
      return .get
    }
  }
}
