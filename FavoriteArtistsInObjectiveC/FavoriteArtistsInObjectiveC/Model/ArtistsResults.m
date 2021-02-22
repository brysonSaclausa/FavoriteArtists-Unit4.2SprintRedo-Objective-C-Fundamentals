//
//  ArtistsResults.m
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/22/21.
//

#import "ArtistsResults.h"
#import "BRSArtist.h"
#import "BRSArtist+JSONSerialization.h"

@implementation ArtistsResults

- (instancetype)initWithArtists:(NSArray<BRSArtist *> *)artists;
{
    if (self = [super init]) {
        _artists = artists.copy;
    }
    return self;
    
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
{
    NSArray *artistDictionaries = [dictionary objectForKey:@"artists"];
    if (![artistDictionaries isKindOfClass:NSArray.class]) return nil;
    
    NSMutableArray *artists = [[NSMutableArray alloc] initWithCapacity:artistDictionaries.count];
    
    for (NSDictionary *artistDictionary in artistDictionaries) {
        if (![artistDictionary isKindOfClass:NSDictionary.class]) continue;
        
        BRSArtist *artist = [[BRSArtist alloc]initWithDictionary:artistDictionary];
        
        if (artist){
            [artists addObject:artist];
        } else {
            NSLog(@"Unable to decode json: %@", artistDictionary);
        }
    }
    return [self initWithArtists:artists];
    
}

@end
