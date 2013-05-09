//
//  TableViewController.h
//  SurveyAppProto
//
//  Created by Mike Smith on 5/7/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController {
    NSArray *headers;
    NSArray *states;
    NSString *title;
}

- (id)initWithStyle:(UITableViewStyle)style initWithTitle:(NSString *) title;

@end
