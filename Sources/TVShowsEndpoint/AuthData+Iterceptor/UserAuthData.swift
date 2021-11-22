//
//  UserAuthData.swift
//
//  Created by iMacPro on 22.11.2021..
//

import Foundation

// MARK: - UserAuthData -

public struct UserAuthData: Codable {
  let repository = UserDefaults.standard
  
  var accessToken: String
  var client: String
  var expiry: String
  var uid: String
  
  // constant
  let bearer: String = Constants.Interceptor.tokenType
  
  enum CodingKeys: String, CodingKey {
    case accessToken = "access-token"
    case client
    case expiry
    case uid
    case bearer = "Bearer"
  }
}

// MARK: - Extensions -

extension UserAuthData: CustomStringConvertible {
  public var description: String {
    return "🔐: \(accessToken), [\(client)]"
  }
}

extension UserAuthData: Comparable {
  public static func < (lhs: UserAuthData, rhs: UserAuthData) -> Bool {
    return lhs.accessToken == rhs.accessToken &&
    lhs.client == rhs.client
  }
}


