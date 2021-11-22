//
//  Endpoint+FullPath.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//

public extension Endpoint {
  var fullPath: String {
    return Constants.RestAPI.baseURLString + pathString
  }
}
