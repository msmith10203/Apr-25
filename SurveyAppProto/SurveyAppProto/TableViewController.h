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
    UILabel *label;
    
	//The currenly selected cell (or nil) and its text field.
	NSIndexPath *selected;
	UITextView *textField;
}

- (id)initWithStyle:(UITableViewStyle)style initWithTitle:(NSString *) title;

@end
