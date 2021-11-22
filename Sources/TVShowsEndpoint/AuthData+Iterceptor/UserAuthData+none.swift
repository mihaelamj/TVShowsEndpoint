//
//  UserAuthData+none.swift
//
//  Created by iMacPro on 22.11.2021..
//

// MARK: - none -

public extension UserAuthData {
  static func none() -> UserAuthData {
    let result = UserAuthData(accessToken: "", client: "", expiry: "", uid: "")
    return result
  }
}

public extension UserAuthData {
  func isNone() -> Bool {
    return self == UserAuthData.none()
  }
}
