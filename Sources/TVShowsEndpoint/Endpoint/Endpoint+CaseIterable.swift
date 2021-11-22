//
//  Endpoint+CaseIterable.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//

import Foundation

extension Endpoint: RawRepresentable {
  
  public typealias RawValue = Int
  static let startIndex = 0
  
  // MARK: - init -
  
  public init?(rawValue: Int) {
    switch rawValue {
      
      // MARK: User -
      
    case Endpoint.startIndex + 1:
      self = .register(email: "", password: "")
      
    case Endpoint.startIndex + 2:
      self = .login(email: "", password: "")
      
    case Endpoint.startIndex + 3:
      self = .updateUserImage(email: "", imageURLString: "")
      
    case Endpoint.startIndex + 4:
      self = .me
      
      // MARK: Show -
      
    case Endpoint.startIndex + 5:
      self = .shows
      
    case Endpoint.startIndex + 6:
      self = .show(id: 0)
      
    case Endpoint.startIndex + 7:
      self = .topRated
      
      // MARK: Review -
      
    case Endpoint.startIndex + 8:
      self = .createReview(showId: 0, rating: 0, comment: "")
      
    case Endpoint.startIndex + 9:
      self = .deleteReview(reviewId: 0)
      
    case Endpoint.startIndex + 10:
      self = .updateReview(reviewId: 0, rating: 0, comment: "")
      
    case Endpoint.startIndex + 11:
      self = .reviews(showId: 0)
      
    default:
      return nil
      
    }
  }
  
  // MARK: - rawValue -
  
  public var rawValue: Int {
    
    switch self {
      
      // MARK: User -
      
    case .register(email: "", password: ""):
      return Endpoint.startIndex + 1
      
    case .login(email: "", password: ""):
      return Endpoint.startIndex + 2
      
    case .updateUserImage(email: "", imageURLString: ""):
      return Endpoint.startIndex + 3
      
    case .me:
      return Endpoint.startIndex + 4
      
      // MARK: Show -
      
    case .shows:
      return Endpoint.startIndex + 5
      
    case .show(id: 0):
      return Endpoint.startIndex + 6
      
    case .topRated:
      return Endpoint.startIndex + 7
      
      // MARK: Review -
      
    case .createReview(showId: 0, rating: 0, comment: ""):
      return Endpoint.startIndex + 8
      
    case .deleteReview(reviewId: 0):
      return Endpoint.startIndex + 9
      
    case .updateReview(reviewId: 0, rating: 0, comment: ""):
      return Endpoint.startIndex + 10
      
    case .reviews(showId: 0):
      return Endpoint.startIndex + 11
      
    default:
      return Endpoint.startIndex
      
    }
    
  }
  
}

// MARK: -
// MARK: RawRepresentable -


extension Endpoint: CaseIterable {
  public static var allCases: [Endpoint] {
    return [
      // MARK: user -
      .register(email: "", password: ""),
      .login(email: "", password: ""),
      .updateUserImage(email: "", imageURLString: ""),
      .me,
      
      // MARK: Show -
      .shows,
      .show(id: 0),
      .topRated,
      
      // MARK: Review -
      .createReview(showId: 0, rating: 0, comment: ""),
      .deleteReview(reviewId: 0),
      .updateReview(reviewId: 0, rating: 0, comment: ""),
      .reviews(showId: 0),
    ]
  }
}
