//
//  Endpoint+Interceptor.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//

import Alamofire

public extension Endpoint {
  var interceptor: RequestInterceptor? {
    switch self {

      // MARK: - User -

    case .register:
      return nil
    case .login:
      return nil
    case .updateUserImage:
      return nil
    case .me:
      return nil

      // MARK: - Show -

    case .shows:
      return UserAuthInterceptor()
    case .show:
      return UserAuthInterceptor()
    case .topRated:
      return UserAuthInterceptor()

      // MARK: - Review -

    case .createReview:
      return UserAuthInterceptor()
    case .deleteReview:
      return UserAuthInterceptor()
    case .updateReview:
      return UserAuthInterceptor()
    case .reviews:
      return UserAuthInterceptor()
    }
  }
}
