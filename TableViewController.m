//
//  TableViewController.m
//  0%Finanzierung- Zähne gut, alles gut
//
//  Created by Filip Lexmann on 17/11/15.
//  Copyright © 2015 Filip Lexmann. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "DetailViewController.h"
#import "TableViewHeader.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    Title = @[@"Vorteile",
              @"4 Schritte",
              @"Wo Sie uns finden",
              @"Unsere Videos",
              @"Unsere Webseite",];
    
    
    
    Description = @[@"Ihre Vorteile mit Lexmann",
                    @"4 Schritte zum Premium Zahnersatz",
                    @"Ihre Ansprechpartner",
                    @"Sie brauchen noch ein bisschen Hilfe?",
                    @"Schauen Sie vorbei",];
    
    
    
    Image = @[@"Lexmann.logo.png",
              @"MadeGermany.jpg",
              @"Autoseit.jpg",
              @"Lexmann0.jpg",
              @"Webseite.jpg",];
    
    
    UIBarButtonItem *NewButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    [[self navigationItem] setBackBarButtonItem:NewButton];
    
    self.tableView.separatorColor = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:0.25];
    
    
    self.tableView.tableHeaderView = [[TableViewHeader alloc] initWithText:@""];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return Title.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *CellIdentifier = @"Cell1";

    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    int row = (int)[indexPath row];
    
    cell.CellTitle.text = Title[row];
    cell.CellDescription.text = Description[row];
    cell.CellImageView.image = [UIImage imageNamed:Image[row]];
    
    switch (indexPath.row) {
        case 0:
            //Return image cell
            break;
        case 2:
            //Return Video player cell
            break;
        case 3:
            
            //Return webview cell
            break;
            
        default:
            //Return whatever cell
            break;
    }
    
    return cell;
   
  
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"ShowDetails"]) {
        DetailViewController *detailView = [segue destinationViewController];
        NSIndexPath *myindexpath = [self.tableView indexPathForSelectedRow];
        
        int row = (int)[myindexpath row];
        detailView.DetailModal = @[Title[row],Description[row],Image[row]];
    }
    
    
    
    
}






@end
