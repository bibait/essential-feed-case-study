import XCTest
import EssentialFeed

final class FeedEndPointTests: XCTestCase {

    func test_feed_endpointURL() {
        let baseURL = URL(string: "http://base-url.com")!
        
        let received = FeedEndPoint.get.url(baseURL: baseURL)
        
        XCTAssertEqual(received.scheme, "http", "scheme")
        XCTAssertEqual(received.host(), "base-url.com", "host")
        XCTAssertEqual(received.path(), "/v1/feed", "path")
        XCTAssertEqual(received.query(), "limit=10", "query")
    }
    
}
