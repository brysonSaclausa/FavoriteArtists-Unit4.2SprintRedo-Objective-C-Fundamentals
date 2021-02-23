//
//  BRSArtist+JSONSerialization.h
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/22/21.
//

#import "BRSArtist.h"

NS_ASSUME_NONNULL_BEGIN

@interface BRSArtist (JSONSerialization)

- (nullable instancetype)initWithDictionary:(NSDictionary *)aDictionary;

- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
