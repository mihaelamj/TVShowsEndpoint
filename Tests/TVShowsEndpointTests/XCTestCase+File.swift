//
//  XCTestCase+File.swift
//  
//
//  Created by iMacPro on 22.11.2021..
//

import Foundation
import XCTest

extension XCTestCase {
  func readJSONFile(_ fileName: String) throws -> Data? {
    let bundle = Bundle(for: type(of: self))
    guard let url = bundle.url(forResource: fileName, withExtension: "json") else {
      XCTFail("Missing file: \(fileName)")
      return nil
    }
    return try Data(contentsOf: url)
  }

  func fileNameExistsInBundle(fileName: String, withExtension: String) -> Bool {
    let bundle = Bundle(for: type(of: self))
    guard bundle.url(forResource: fileName, withExtension: withExtension) != nil else { return false }
    return true
  }
}
