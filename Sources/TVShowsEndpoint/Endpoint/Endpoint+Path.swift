//
//  Endpoint+Path.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//

public extension Endpoint {
  var pathString: String {
    switch self {
      
// MARK: - User -
      
    case .register:
      return "/users"
    case .login:
      return "/users/sign_in"
    case .updateUserImage:
      return "/users"
    case .me:
      return "/users/me"
      
// MARK: - Show -
      
    case .shows:
      return "/shows"
    case .show(id: let id):
      return "/shows/\(id)"
    case .topRated:
      return "/shows/top_rated"
      
// MARK: - Review -
      
    case .createReview:
      return "/reviews"
    case .deleteReview(reviewId: let reviewId):
      return "/reviews/\(reviewId)"
    case .updateReview(reviewId: let reviewId, rating: _, comment: _):
      return "/reviews/\(reviewId)"
    case .reviews(showId: let showId):
      return "/shows/\(showId)/reviews"
    }
  }
}
