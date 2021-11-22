//
//  File.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//

import Foundation

public extension Endpoint {
  var name: String {
    switch self {
      
// MARK: - User -
      
    case .register:
      return "users"
    case .login:
      return "login"
    case .updateUserImage:
      return "updateUserImage"
    case .me:
      return "me"
      
// MARK: - Show -
      
    case .shows:
      return "shows"
    case .show(id: let id):
      return "show"
    case .topRated:
      return "topRated"
      
// MARK: - Review -
      
    case .createReview:
      return "createReview"
    case .deleteReview(reviewId: let reviewId):
      return "deleteReview"
    case .updateReview(reviewId: let reviewId):
      return "updateReview"
    case .reviews(showId: let showId):
      return "reviews"
    }
  }
}
