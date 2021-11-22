import XCTest
@testable import TVShowsEndpoint

final class TVShowsEndpointTests: XCTestCase {
  
  func testLoginPath() {
    let path = TVShowsEndpoint.Endpoint.login(email: "", password: "").fullPath
    let realPath = "https://tv-shows.infinum.academy/users"
    XCTAssertEqual(path, realPath)
  }
  
}
