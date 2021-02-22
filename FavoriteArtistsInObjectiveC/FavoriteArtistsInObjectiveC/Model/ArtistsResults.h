//
//  ArtistsResults.h
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/22/21.
//

#import <Foundation/Foundation.h>

@class BRSArtist;

NS_ASSUME_NONNULL_BEGIN

@interface ArtistsResults : NSObject

@property (nonatomic, readonly, copy) NSArray <BRSArtist *> *artists;

- (instancetype)initWithArtists:(NSArray<BRSArtist *> *)artists;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
