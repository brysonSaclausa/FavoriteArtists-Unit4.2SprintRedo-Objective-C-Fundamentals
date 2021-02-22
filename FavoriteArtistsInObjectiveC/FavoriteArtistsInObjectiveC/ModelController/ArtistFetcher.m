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
    
    
    [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"Error fetching artist: %@", error);
            
            return;
            
        }
        
        NSError *jsonError;
        NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data
                                                                   options:0
                                                                     error:&jsonError];
        if (!dictionary) {
            NSLog(@"Error decoding JSON: %@", jsonError);
            
            return;
            
        }
            
    }] resume];
}

    

@end
