//
//  BRSArtist.m
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/19/21.
//

#import "BRSArtist.h"

@implementation BRSArtist

- (instancetype)initWithArtistName:(NSString *)aName
                         artistBio:(NSString *)aBio
                        yearFormed:(int *)aYear;
{
    if (self = [super init]) {
        _artistName = aName;
        _artistBio = aBio;
        _yearFormed = aYear;
    }
    return self;
}

@end

//Defined the initializer for the BRSArtist class
