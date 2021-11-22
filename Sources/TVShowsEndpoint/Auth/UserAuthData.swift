//
//  UserAuthData.swift
//
//  Created by iMacPro on 22.11.2021..
//

import Foundation

// MARK: - Repository Protocol -

public protocol UserAuthDataRepository {
  mutating func loadFromRepository() -> Bool
  func saveToRepository()
  static func fromRepository() -> UserAuthData?
  func deleteFromRepository()
}

// MARK: - URLResponse Protocol -

public protocol UserAuthDataURLResponse {
  static func from(urlResponse: HTTPURLResponse?) -> UserAuthData?
}

// MARK: - URLRequest Protocol -

public protocol UserAuthDataURLRequest {
  func update(urlRequest: inout URLRequest)
}

// MARK: - UserAuthData -

public struct UserAuthData: Codable {
  let repository = UserDefaults.standard
  
  var accessToken: String
  var client: String
  var expiry: String
  var uid: String
  
  // constant
  let bearer: String = Constants.Interceptor.tokenType
  
  private enum CodingKeys: String, CodingKey {
    case accessToken = "access-token"
    case client
    case expiry
    case uid
    case bearer = "Bearer"
  }
}

// MARK: - none -

public extension UserAuthData {
  static func none() -> UserAuthData {
    let result = UserAuthData(accessToken: "", client: "", expiry: "", uid: "")
    return result
  }
}


// MARK: - UserAuthDataRepository -

extension UserAuthData: UserAuthDataRepository {
  
  mutating public func loadFromRepository() -> Bool {
    guard let storedAccessToken = repository.string(forKey: CodingKeys.accessToken.rawValue),
          let storedClient = repository.string(forKey: CodingKeys.client.rawValue),
          let storedExpiry = repository.string(forKey: CodingKeys.expiry.rawValue),
          let storedUid = repository.string(forKey: CodingKeys.uid.rawValue)
    else { return false }
    
    accessToken = storedAccessToken
    client = storedClient
    expiry = storedExpiry
    uid = storedUid
    return true
  }
  
  public func saveToRepository() {
    repository.set(accessToken, forKey: CodingKeys.accessToken.rawValue)
    repository.set(expiry, forKey: CodingKeys.expiry.rawValue)
    repository.set(client, forKey: CodingKeys.client.rawValue)
    repository.set(uid, forKey: CodingKeys.uid.rawValue)
  }
  
  public static func fromRepository() -> UserAuthData? {
    var result = UserAuthData.none()
    return result.loadFromRepository() ? result : nil
  }
  
  public func deleteFromRepository() {
    repository.removeObject(forKey: CodingKeys.accessToken.rawValue)
    repository.removeObject(forKey: CodingKeys.expiry.rawValue)
    repository.removeObject(forKey: CodingKeys.client.rawValue)
    repository.removeObject(forKey: CodingKeys.uid.rawValue)
  }
  
}

// MARK: - UserAuthDataURLResponse -

extension UserAuthData: UserAuthDataURLResponse {
  public static func from(urlResponse: HTTPURLResponse?) -> UserAuthData? {
    guard let token = urlResponse?.headers.dictionary[CodingKeys.accessToken.rawValue],
          let expiry = urlResponse?.headers.dictionary[CodingKeys.expiry.rawValue],
          let client = urlResponse?.headers.dictionary[CodingKeys.client.rawValue],
          let uid = urlResponse?.headers.dictionary[CodingKeys.uid.rawValue] else { return nil  }
    
    let result = UserAuthData(accessToken: token, client: client, expiry: expiry, uid: uid)
    return result
  }
}

// MARK: - UserAuthDataURLRequest -

extension UserAuthData: UserAuthDataURLRequest {
  public func update(urlRequest: inout URLRequest) {
    urlRequest.setValue(accessToken, forHTTPHeaderField: CodingKeys.accessToken.rawValue)
    urlRequest.setValue(client, forHTTPHeaderField: CodingKeys.client.rawValue)
    urlRequest.setValue(expiry, forHTTPHeaderField: CodingKeys.expiry.rawValue)
    urlRequest.setValue(uid, forHTTPHeaderField: CodingKeys.uid.rawValue)
    urlRequest.setValue(bearer, forHTTPHeaderField: CodingKeys.bearer.rawValue)
  }
}

// MARK: - Helper -

public extension UserAuthData {
  static func saveToRepositoryFrom(urlResponse: HTTPURLResponse?) {
    guard let me = UserAuthData.from(urlResponse: urlResponse) else { return }
    me.saveToRepository()
  }
  
  static func deleteFromRepository() {
    UserAuthData.none().deleteFromRepository()
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

extension UserAuthData {
  func isNone() -> Bool {
    return self == UserAuthData.none()
  }
}
