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
  
  static var allParams: [Params] = [
    ["email": "", "password": "", "password_confirmation": ""],
    ["email": "", "password": ""],
    ["email": ""],
    [:],
    [:],
    [:],
    [:],
    ["rating": 0, "comment": "", "show_id" : 0],
    [:],
    ["rating": 0, "comment": ""],
    [:]
  ]
  
  func testAllParams() {
    var index = 0
    for endpoint in Endpoint.allCases {
      let params = endpoint.parameters
      let constParam = TestParams.allParams[index]
      debugPrint("Testing: \(params)")
      index += 1
      
    }
  }
  
}
