//
//  BRSArtist.m
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/19/21.
//

#import "BRSArtist.h"

@implementation BRSArtist

- (instancetype)init
{
    return [self initWithArtistName:@"" artistBio:@"" yearFormed:0];
}

- (instancetype)initWithArtistName:(NSString *)aName
                         artistBio:(NSString *)aBio
                        yearFormed:(int)aYear;
{
    if (self = [super init]) {
        _artistName = aName.copy;
        _artistBio = aBio.copy;
        _yearFormed = aYear;
    }
    return self;
}



@end


