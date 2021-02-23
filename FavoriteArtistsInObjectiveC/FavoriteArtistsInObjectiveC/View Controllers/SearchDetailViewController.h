//
//  SearchDetailViewController.h
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/20/21.
//

#import <UIKit/UIKit.h>
#import "BRSArtist.h"

@class Artist;
@class BRSFavArtistsModelController;

NS_ASSUME_NONNULL_BEGIN

@interface SearchDetailViewController : UIViewController <UISearchBarDelegate>

@property (nonatomic, nullable) BRSArtist *artist;
@property (nonatomic, nullable) BRSFavArtistsModelController *artistModelController;

@end

NS_ASSUME_NONNULL_END
