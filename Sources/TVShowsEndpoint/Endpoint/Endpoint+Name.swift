//
//  File.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//

import Foundation

public extension Endpoint {
  
  public struct Names {
    static let register = "register"
    static let login = "login"
    static let updateUserImage = "updateUserImage"
    static let me = "me"
    
    static let shows = "shows"
    static let show = "show"
    static let topRated = "topRated"
    
    static let createReview = "createReview"
    static let deleteReview = "deleteReview"
    static let updateReview = "updateReview"
    static let reviews = "reviews"
  }
  
  var name: String {
    switch self {
      
// MARK: - User -
      
    case .register:
      return Names.register
    case .login:
      return Names.login
    case .updateUserImage:
      return Names.updateUserImage
    case .me:
      return Names.me
      
// MARK: - Show -
      
    case .shows:
      return Names.shows
    case .show(id: _):
      return Names.show
    case .topRated:
      return Names.topRated
      
// MARK: - Review -
      
    case .createReview:
      return Names.createReview
    case .deleteReview(reviewId: _):
      return Names.deleteReview
    case .updateReview(reviewId: _):
      return Names.updateReview
    case .reviews(showId: _):
      return Names.reviews
    }
  }
}


public extension Endpoint {
  init?(name: String) {
    switch name {
    case Names.register:
      self = .register(email: "", password: "")
    case Names.login:
      self = .login(email: "", password: "")
    case Names.updateUserImage:
      self = .updateUserImage(email: "", imageURLString: "")
    case Names.me:
      self = .me
      
    case Names.shows:
      self = .shows
    case Names.show:
      self = .show(id: 0)
    case Names.topRated:
      self = .topRated
      
    case Names.createReview:
      self = .createReview(showId: 0, rating: 0, comment: "")
    case Names.deleteReview:
      self = .deleteReview(reviewId: 0)
    case Names.updateReview:
      self = .updateReview(reviewId: 0, rating: 0, comment: "")
    case Names.reviews:
      self = .reviews(showId: 0)
      
    default:
      return nil
    }
    
  }
}
