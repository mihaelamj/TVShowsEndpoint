//
//  Endpoint+Parameters.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//

public extension Endpoint {
  var parameters: [String: Any]  {
    switch self {
      
// MARK: - User -
      
    case let .register(email, password):
      return ["email": email, "password": password, "password_confirmation": password]
    case let .login(email, password):
      return ["email": email, "password": password]
    case let .updateUserImage(email, _):
      return ["email": email]
    case .me:
      return [:]
      
// MARK: - Show -
      
    case .shows:
      return [:]
    case .show:
      return [:]
    case .topRated:
      return [:]
      
// MARK: - Review -
      
    case let .createReview(showId, rating, comment):
      return ["rating": rating, "comment": comment, "show_id" : showId]
    case .deleteReview:
      return [:]
    case .updateReview:
      return [:]
    case .reviews:
      return [:]
    }
  }
}
