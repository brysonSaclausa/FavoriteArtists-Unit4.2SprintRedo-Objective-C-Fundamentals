//
//  BRSFavArtistsController.m
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/19/21.
//

#import "BRSFavArtistsModelController.h"
#import "BRSArtist.h"
#import "BRSArtist+JSONSerialization.h"




@interface BRSFavArtistsModelController () {
    NSMutableArray *_internalArtists;
}

@end

@implementation BRSFavArtistsModelController

- (instancetype)init
{
    if (self = [super init]) {
        _internalArtists = [[NSMutableArray alloc] init];
        
        // LOAD
        NSString *filePath = self.getFilePath;
        NSFileManager *fileManager = [NSFileManager defaultManager];
        
        if ([fileManager fileExistsAtPath:filePath]) {
            NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfURL:self.createFileURL];
            [self updateArtistsArrayWithDictionary:dictionary];
        }
        
        
    }
    return self;
}


#pragma mark - Convenience Accessors

- (NSArray<BRSArtist *> *)artistArray
{
    return _internalArtists.copy;
}//

- (void)addArtist:(BRSArtist *)artist;
{
    [_internalArtists addObject:artist];
    [self saveToPersistentStore];
}//

//MARK: - Persistence

- (NSURL *)createFileURL
{
    NSString *fileName = @"FavoriteArtistData.plist";
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true) firstObject];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    NSURL *fileURL = [baseURL URLByAppendingPathComponent:fileName];
    return fileURL;
}//

- (NSString *)getFilePath
{
    return self.createFileURL.path;
}//

// SAVE
-(void)saveToPersistentStore
{
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    for (BRSArtist *artist in _internalArtists) {
        NSString *key = artist.artistName;
        dictionary[key] = artist.toDictionary;
    }
    
    [dictionary writeToURL:self.createFileURL atomically:YES];
}

- (void)updateArtistsArrayWithDictionary:(NSDictionary *)dictionary
{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (NSDictionary *artistDictionary in dictionary.allValues) {
        BRSArtist *artist = [[BRSArtist alloc] initWithDictionary:artistDictionary];
        [array addObject:artist];
    }
    
    _internalArtists = array;
}





@end
