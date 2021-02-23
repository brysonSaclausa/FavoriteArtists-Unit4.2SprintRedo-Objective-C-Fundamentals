//
//  BRSFavArtistTableViewController.m
//  FavoriteArtistsInObjectiveC
//
//  Created by BrysonSaclausa on 2/20/21.
//

#import "BRSFavArtistTableViewController.h"
#import "BRSArtist.h"
#import "BRSFavArtistsModelController.h"
#import "SearchDetailViewController.h"

@interface BRSFavArtistTableViewController ()

@property BRSFavArtistsModelController *artistModelController;

@end

@implementation BRSFavArtistTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.artistModelController = [[BRSFavArtistsModelController alloc] init];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
    
}


#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.artistModelController.artistArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"artistCell" forIndexPath:indexPath];
    
    BRSArtist *artist = [self.artistModelController.artistArray objectAtIndex:indexPath.row];
    cell.textLabel.text = artist.artistName;
    cell.detailTextLabel.text = @"hello";

    
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"addArtistSegue"]) {
        SearchDetailViewController *addArtistVC = [segue destinationViewController];
        addArtistVC.artistModelController = self.artistModelController;
    }
    
}
//@"addArtistSegue"
//@"artistDetailSegue"

@end
