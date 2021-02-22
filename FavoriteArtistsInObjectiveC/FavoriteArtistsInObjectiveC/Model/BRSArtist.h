//
//  BRSArtist.h
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/19/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BRSArtist : NSObject

@property (nonatomic, readonly, copy) NSString *artistName;
@property (nonatomic, readonly, copy) NSString *artistBio;
@property (nonatomic, readonly) int yearFormed;

- (instancetype)initWithArtistName:(NSString *)aName
                         artistBio:(NSString *)aBio
                        yearFormed:(int)aYear NS_DESIGNATED_INITIALIZER;





@end

NS_ASSUME_NONNULL_END

//delared properties and initializer for BRSArtist class
