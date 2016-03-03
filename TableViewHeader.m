//
//  TableViewHeader.m
//  0%Finanzierung- Zähne gut, alles gut
//
//  Created by Filip Lexmann on 17/11/15.
//  Copyright © 2015 Filip Lexmann. All rights reserved.
//
#import "TableViewHeader.h"

@implementation TableViewHeader



-(id)initWithText:(NSString *)text {
    
    UIImage *img = [UIImage imageNamed:@"Oben.jpg"];
    if ((self = [super initWithImage:img])) {
        label = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 200, 50)];
        label.textColor = [UIColor whiteColor];
        label.backgroundColor = [UIColor clearColor];
        label.font = [UIFont systemFontOfSize:30];
        label.text = text;
        label.numberOfLines = 1;
        [self addSubview:label];
    }
    
    return self;
    
}


-(void)setText:(NSString *)text {
    label.text = text;
    
}

@end
