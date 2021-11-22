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

public extension Endpoint {
  
  // INFO: Maybe make this more generic to accept non-JSON decoders, like Text, XML, or CSV -
  
  static func makeDecoder(decodingStrategy: JSONDecoder.KeyDecodingStrategy) -> JSONDecoder {
    let result = JSONDecoder()
    result.keyDecodingStrategy = decodingStrategy
    return result
  }
  
}
