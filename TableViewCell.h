//
//  TableViewCell.h
//  0%Finanzierung- Zähne gut, alles gut
//
//  Created by Filip Lexmann on 17/11/15.
//  Copyright © 2015 Filip Lexmann. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell




@property (weak, nonatomic) IBOutlet UIImageView *CellImageView;
@property (weak, nonatomic) IBOutlet UILabel *CellTitle;
@property (weak, nonatomic) IBOutlet UILabel *CellDescription;




@end
