import Foundation

public protocol FeedImageView {
    associatedtype Image

    func display(_ model: FeedImageViewModel)
}

public final class FeedImagePresenter {
    
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location
        )
    }
    
}
