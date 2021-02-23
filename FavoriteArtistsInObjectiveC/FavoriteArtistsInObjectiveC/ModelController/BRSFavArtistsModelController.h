//
//  BRSFavArtistsController.h
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/19/21.
//

#import <Foundation/Foundation.h>

@class BRSArtist;

NS_ASSUME_NONNULL_BEGIN

@interface BRSFavArtistsModelController : NSObject

@property (nonatomic, readonly, copy) NSArray<BRSArtist *> *artistArray;

- (void)addArtist:(BRSArtist *)artist;

@end

NS_ASSUME_NONNULL_END
