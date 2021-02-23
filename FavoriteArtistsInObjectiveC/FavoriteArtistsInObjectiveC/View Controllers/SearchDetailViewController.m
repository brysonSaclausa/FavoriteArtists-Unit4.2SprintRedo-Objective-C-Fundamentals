//
//  SearchDetailViewController.m
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/20/21.
//

#import "SearchDetailViewController.h"
#import "ArtistFetcher.h"
#import "BRSArtist.h"
#import "BRSFavArtistsModelController.h"

@interface SearchDetailViewController ()

@property ArtistFetcher *artistFetcher;
// Private IBOutlets
@property (nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property (nonatomic) IBOutlet UISearchBar *searchBar;
@property (nonatomic) IBOutlet UILabel *nameLabel;
@property (nonatomic) IBOutlet UILabel *yearLabel;
@property (nonatomic) IBOutlet UITextView *bioTextView;

@end

@implementation SearchDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.searchBar.delegate = self;
    
    self.artistFetcher = [[ArtistFetcher alloc] init];
}

- (void) updateViews
{
    self.nameLabel.text = self.artist.artistName;
    self.bioTextView.text = self.artist.artistBio;
    NSString *yearFormedString = [NSString stringWithFormat:@"Year formed %d", self.artist.yearFormed];
    self.yearLabel.text = yearFormedString;
    
    
}

- (IBAction)didTapSaveButton:(id)sender
{
    
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end

@implementation SearchDetailViewController(UISearchBarDelegate)

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    NSString *searchTerm = searchBar.text;
    if ((searchTerm == nil) | [searchTerm isEqualToString:@""]) return;
    
    NSLog(@"Searching for %@", searchTerm);
    
    [self.artistFetcher fetchArtistWithName:searchTerm completionHandler:^(NSArray * _Nullable artists, NSError * _Nullable error)
    {
        NSLog(@"Found %ld results!", artists.count);
        
        if (artists.count > 0) {
            self.artist = artists[0];
        }
        
        [self updateViews];
    }];
    

}

@end
