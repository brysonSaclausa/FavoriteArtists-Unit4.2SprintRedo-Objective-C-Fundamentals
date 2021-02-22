//
//  ArtistFetcher.h
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/22/21.
//

#import <Foundation/Foundation.h>

typedef void(^ArtistFetcherCompletionHandler)(NSArray *_Nullable artists, NSError *_Nullable error);

NS_ASSUME_NONNULL_BEGIN

@interface ArtistFetcher : NSObject

- (void)fetchArtistWithName:(NSString *)artistName completionHandler:(ArtistFetcherCompletionHandler)completionHandler;

@end

NS_ASSUME_NONNULL_END
