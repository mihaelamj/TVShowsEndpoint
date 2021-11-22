//
//  UserAuthDataProtocols.swift
//
//  Created by iMacPro on 22.11.2021..
//

import Foundation

// MARK: - Repository Persistable -

public protocol RepositoryPersistable {
  mutating func loadFromRepository() -> Bool
  func saveToRepository()
  static func fromRepository() -> UserAuthData?
  func deleteFromRepository()
}

// MARK: - URLResponse Initable -

public protocol URLResponseInitable {
  static func from(urlResponse: HTTPURLResponse?) -> UserAuthData?
}

// MARK: - URLRequest Updatable -

public protocol URLRequestUpdatable {
  func update(urlRequest: inout URLRequest)
}
