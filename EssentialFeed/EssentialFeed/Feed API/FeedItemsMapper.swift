import Foundation

internal final class FeedItemsMapper {
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.isOK, let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteFeedLoader.Error.invalidData
        }

        return root.items
    }
    
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }
}