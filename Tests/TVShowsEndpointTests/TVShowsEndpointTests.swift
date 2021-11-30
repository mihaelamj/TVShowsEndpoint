import XCTest
@testable import TVShowsEndpoint

final class TVShowsEndpointTests: XCTestCase {
  
  func testLoginPath() {
    let path = TVShowsEndpoint.Endpoint.login(email: "", password: "").fullPath
    let realPath = "https://tv-shows.infinum.academy/users"
    XCTAssertEqual(path, realPath)
  }
  
  func testAllPaths() {
    for endpoint in Endpoint.allCases {
      let fullPath = endpoint.fullPath
      debugPrint("Testing: \(fullPath)")
      let url = URL(string: fullPath)
      XCTAssertNotNil(url)
    }
  }
  
}
