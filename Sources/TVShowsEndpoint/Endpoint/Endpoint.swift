//
//  Endpoint.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//

public enum Endpoint {
  
  // MARK: - User -
  
  case register(email: String, password: String)
  case login(email: String, password: String)
  case updateUserImage(email: String, imageURLString: String)
  case me
  
  // MARK: - Show -
  
  case shows
  case show(id: Int)
  case topRated
  
  // MARK: - Review -
  
  case createReview(showId: Int, rating: Int, comment: String)
  case deleteReview(reviewId: Int)
  case updateReview(reviewId: Int, rating: Int, comment: String)
  case reviews(showId: Int)
}
