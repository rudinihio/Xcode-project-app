//
//  TableViewHeader.h
//  TableViewApplication
//  0%Finanzierung- Zähne gut, alles gut
//
//  Created by Filip Lexmann on 17/11/15.
//  Copyright © 2015 Filip Lexmann. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewHeader : UIImageView {
    
    UILabel *label;
}

-(id)initWithText:(NSString *)text;
-(void)setText:(NSString *)text;

@end
