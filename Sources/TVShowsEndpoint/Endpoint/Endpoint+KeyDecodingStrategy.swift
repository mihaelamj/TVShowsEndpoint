//
//  Endpoint+KeyDecodingStrategy.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//
import Foundation

public extension Endpoint {
  var decodingStrategy: JSONDecoder.KeyDecodingStrategy {
    switch self {
      
      // MARK: - User -
      
    case .register:
      return .convertFromSnakeCase
    case .login:
      return .convertFromSnakeCase
    case .updateUserImage:
      return .convertFromSnakeCase
    case .me:
      return .convertFromSnakeCase
      
      // MARK: - Show -
      
    case .shows:
      return .convertFromSnakeCase
    case .show:
      return .convertFromSnakeCase
    case .topRated:
      return .convertFromSnakeCase
      
      // MARK: - Review -
      
    case .createReview:
      return .convertFromSnakeCase
    case .deleteReview:
      return .convertFromSnakeCase
    case .updateReview:
      return .convertFromSnakeCase
    case .reviews:
      return .convertFromSnakeCase
    }
  }
}
