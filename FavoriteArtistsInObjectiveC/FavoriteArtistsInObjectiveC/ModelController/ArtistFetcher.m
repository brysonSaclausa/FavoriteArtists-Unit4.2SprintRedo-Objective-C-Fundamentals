//
//  ArtistFetcher.m
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/22/21.
//

#import "ArtistFetcher.h"
#import "BRSArtist.h"

static NSString *const ArtistFetcherBaseURLString = @"https://www.theaudiodb.com/api/v1/json/1/search.php?";

@implementation ArtistFetcher

- (void)fetchArtistWithName:(NSString *)artistName completionHandler:(ArtistFetcherCompletionHandler)completionHandler
{
    NSURLComponents *urlComponents = [[NSURLComponents alloc] initWithString: ArtistFetcherBaseURLString];
    
    urlComponents.queryItems = @[ [NSURLQueryItem queryItemWithName:@"" value:artistName] ];
    
    NSURL *url = urlComponents.URL;
    NSLog(@"Fetching artists: %@", url);
    
    
    [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        <#code#>
    }] resume];
}

    

@end
