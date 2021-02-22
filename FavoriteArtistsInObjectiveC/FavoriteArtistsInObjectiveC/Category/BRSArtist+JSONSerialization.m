//
//  BRSArtist+JSONSerialization.m
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/22/21.
//

#import "BRSArtist+JSONSerialization.h"

@implementation BRSArtist (JSONSerialization)

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
    
    return [ self initWithArtistName: artistName
                           artistBio: artistBio
                          yearFormed: yearFormed];
}

@end
