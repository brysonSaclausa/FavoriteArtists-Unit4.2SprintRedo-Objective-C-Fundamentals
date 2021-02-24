//
//  BRSArtist+JSONSerialization.m
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/22/21.
//

#import "BRSArtist+JSONSerialization.h"
#import "BRSArtist.h"

@implementation BRSArtist (JSONSerialization)

- (nullable instancetype) initWithDictionary:(NSDictionary *)dictionary
{
    NSString *artistName = [dictionary objectForKey:@"strArtist"];
    if (![artistName isKindOfClass:NSString.class]) return nil;
    
    NSNumber *yearFormed = [dictionary objectForKey:@"intFormedYear"];
    if ([yearFormed isKindOfClass:NSNull.class])
    {
        yearFormed = 0;
    }
    
    NSString *artistBio = [dictionary objectForKey:@"strBiographyEN"];
    if (![artistBio isKindOfClass:NSString.class]) return nil;
    
    return [self initWithArtistName:artistName
                          artistBio:artistBio
                         yearFormed:yearFormed.intValue];
}

- (NSDictionary *)toDictionary;
{
    NSNumber *yearFormed = [NSNumber numberWithInt:self.yearFormed];
    
    return@{ @"strArtist": self.artistName,
        @"intFormedYear": yearFormed,
        @"strBiographyEN": self.artistBio
    };
}

@end
