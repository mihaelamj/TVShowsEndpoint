//
//  TestParams.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//

import XCTest
@testable import TVShowsEndpoint

final class TestParams: XCTestCase {
  
  typealias Params = [String : AnyHashable]
  
  static let testEmail = "test@test.com"
  static let testPassword = "testtest"
  static let testRating = 3
  static let testShowId = 8
  static let testComment = "comment"
  
  static var allParams: [Params] = [
    ["email": testEmail, "password": testPassword, "password_confirmation": testPassword],
    ["email": testEmail, "password": testPassword],
    ["email": testEmail],
    [:],
    [:],
    [:],
    [:],
    ["rating": testRating, "comment": testComment, "show_id" : testShowId],
    [:],
    [:],
    [:]
  ]
  
  
  
}
