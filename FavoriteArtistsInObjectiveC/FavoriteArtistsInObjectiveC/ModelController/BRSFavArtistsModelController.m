//
//  BRSFavArtistsController.m
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/19/21.
//

#import "BRSFavArtistsModelController.h"


@interface BRSFavArtistsModelController () {

    NSMutableArray *_internalArtists;
}

@end

@implementation BRSFavArtistsModelController

- (instancetype)init
{
    if (self = [super init]) {
        _internalArtists = [[NSMutableArray alloc] init];
    }
    return self;
}


- (NSArray<BRSArtist *> *)artistArray
{
    return _internalArtists.copy;
}
@end
