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

- (instancetype)initWithDictionary:(NSDictionary *)aDictionary
{
    NSString *artistName = [aDictionary objectForKey:@"strArtist"];
    if (![artistName isKindOfClass:NSString.class]) return nil;
    
    NSNumber *yearFormed = [aDictionary objectForKey:@"intFormedYear"];
    if ([yearFormed isKindOfClass:[NSNull class]]) yearFormed = nil;
        else if (![yearFormed isKindOfClass:NSNumber.class]) return nil;
    
    NSString *artistBio = [aDictionary objectForKey:@"strBiographyEN"];
    if ([artistBio isKindOfClass:NSNull.class]) artistBio = nil;
    else if ([artistBio isKindOfClass:NSString.class]) return nil;
    
    return [ self initWithArtistName: artistName artistBio: artistBio yearFormed: yearFormed];
}

@end


