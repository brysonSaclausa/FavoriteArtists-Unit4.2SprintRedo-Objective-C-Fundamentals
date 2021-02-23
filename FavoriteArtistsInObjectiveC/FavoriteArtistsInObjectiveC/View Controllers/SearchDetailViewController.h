//
//  SearchDetailViewController.h
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/20/21.
//

#import <UIKit/UIKit.h>
#import "BRSArtist.h"

NS_ASSUME_NONNULL_BEGIN

@interface SearchDetailViewController : UIViewController <UISearchBarDelegate>

@property (nonatomic, nullable) BRSArtist *artist;

@end

NS_ASSUME_NONNULL_END
