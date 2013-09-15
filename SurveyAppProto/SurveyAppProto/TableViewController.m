//
//  TableViewController.m
//  SurveyAppProto
//
//  Created by Mike Smith on 5/7/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "TableViewController.h"
#import "SurveyAppDelegate.h"
#import "Model.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style initWithTitle:(NSString *) title
{
    self = [super initWithStyle:style];
    if (self) {

        Model *m = [[Model alloc] init: @"https://www.corpmergers.com/Home/GetAnswerSet1"];
        
		headers =
            [NSArray arrayWithObjects:
                [NSArray arrayWithObjects:
                    m.s[50],    // Our vision/mission excites and motivates me ...
                    [[m.s[95] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],      // before
                    [[m.s[96] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // after
                    nil
                ],
                [NSArray arrayWithObjects:
                    m.s[51],   // I know what made us better or unique in our market.",
                    [[m.s[95] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // before
                    [[m.s[96] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // after
                    nil
                ],
                [NSArray arrayWithObjects:
                    m.s[52],    // I know how my job contributes ...
                    [[m.s[95] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // before
                    [[m.s[96] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // after
                    nil
                ],
                [NSArray arrayWithObjects:
                    m.s[53],    // I know our game plan is to ...,
                    [[m.s[95] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // before
                    [[m.s[96] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // after
                    nil
                ],
                [NSArray arrayWithObjects:
                    m.s[54],    // We are in agreement about specific goals...,
                    [[m.s[95] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // before
                    [[m.s[96] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // after
                    nil
                ],
                [NSArray arrayWithObjects:
                    m.s[55],    // Our planning process ensures ...
                    [[m.s[95] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // before
                    [[m.s[96] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // after
                    nil
                ],
                [NSArray arrayWithObjects:
                    m.s[56],    // I am treated with respect ...
                    [[m.s[95] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // before
                    [[m.s[96] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // after
                    nil
                ],
                [NSArray arrayWithObjects:
                    m.s[57],    // Our organization is guided by clear ...
                    [[m.s[95] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // before
                    [[m.s[96] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // after
                    nil
                ],
                [NSArray arrayWithObjects:
                    m.s[58],    // We have fun at work
                    [[m.s[95] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // before
                    [[m.s[96] stringByAppendingString: @" " ]
                        stringByAppendingString: m.s[97]],        // after
                    nil
                 ],
             nil
        ];

		states =
            [NSArray arrayWithObjects:
             //question
             [NSArray arrayWithObjects:
                nil
              ],
             
             // before
             [NSArray arrayWithObjects:
                m.s[0],    //@"Strongly Disagree",
                m.s[1],    //@"Disagree",
                m.s[2],    //@"Neutral",
                m.s[3],    //@"Agree",
                m.s[4],    //@"Strongly Agree",
                nil
              ],
             
             //after
             [NSArray arrayWithObjects:
                m.s[0],    //@"Strongly Disagree",
                m.s[1],    //@"Disagree",
                m.s[2],    //@"Neutral",
                m.s[3],    //@"Agree",
                m.s[4],    //@"Strongly Agree",
                nil
              ],
             nil
             ];
        
        self = [super initWithNibName: nil bundle:nil];
        if (self) {
            self.title=title;
            SurveyAppDelegate *applicationDelegate = [UIApplication sharedApplication].delegate;
            
            if ([applicationDelegate.names indexOfObject: title] < applicationDelegate.names.count-1) {
                self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]
                                                          initWithTitle: @"Next"
                                                          style: UIBarButtonItemStylePlain
                                                          target: [UIApplication sharedApplication].delegate
                                                          action: @selector(nextStation)
                                                          ];
            }
        }
        return self;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidUnload{
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (void) viewWillAppear: (BOOL) animated
{
	[super viewWillAppear: animated];
}

- (void) viewDidAppear: (BOOL) animated
{
	[super viewDidAppear: animated];
}

- (void) viewWillDisappear: (BOOL) animated
{
	[super viewWillDisappear: animated];
}

- (void) viewDidDisappear: (BOOL) animated
{
	[super viewDidDisappear:animated];
}

- (BOOL) shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation) interfaceOrientation
{
	// Return YES for supported orientations
	//return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}

#pragma mark - Table view data source

- (NSInteger) numberOfSectionsInTableView: (UITableView *) tableView
{
	// Return the number of sections.
    NSArray *sections = [headers objectAtIndex: 0];
	return sections.count;
}

- (NSInteger) tableView: (UITableView *) tableView numberOfRowsInSection: (NSInteger) section
{
	// Return the number of rows in the section.
	// timeZone is one of the five arrays in the array states.
	NSArray *timeZone = [states objectAtIndex: section];
	return timeZone.count;
}

- (UITableViewCell *) tableView: (UITableView *) tableView cellForRowAtIndexPath: (NSIndexPath *) indexPath
{
	static NSString *CellIdentifier = @"Section";
    
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier];
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
	}
    
	// Configure the cell...
	NSArray *timeZone = [states objectAtIndex: indexPath.section];
	cell.textLabel.text = [timeZone objectAtIndex: indexPath.row];
	return cell;
}

- (NSString *) tableView: (UITableView *) tableView titleForHeaderInSection: (NSInteger) section {
  
    SurveyAppDelegate *applicationDelegate = [UIApplication sharedApplication].delegate;
    NSArray *block = [headers objectAtIndex: applicationDelegate.questionNumber];
    NSString *sectionText = [block objectAtIndex: section];
    return sectionText;

}

#pragma mark - Table view delegate

- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath
{
/*
    int r = [indexPath row];
    int s = [indexPath section];

    UITableViewCell *cell = [tableView cellForRowAtIndexPath: indexPath];

    if ([[headers objectAtIndex: r][s] isEqualToString:@"Add Comments"]) {
        selected = indexPath;
        
        //Add a UITextField to the selected cell.
        //The initial text of the text field must coincide with the text of the textLabel.
        //UITableViewCell *cell = [tableView cellForRowAtIndexPath: indexPath];
        UIFont *font = cell.textLabel.font;
        CGFloat dy = (cell.contentView.bounds.size.height - font.lineHeight) / 2;
        
        CGRect frame = CGRectMake(
                                  cell.textLabel.frame.origin.x,
                                  cell.textLabel.frame.origin.y + dy,
                                  cell.contentView.bounds.size.width,
                                  cell.contentView.bounds.size.height - dy
                                  );
        
        textField = [[UITextView alloc] initWithFrame: frame];
        textField.delegate = self;
        textField.backgroundColor = cell.textLabel.backgroundColor;
        textField.textColor = cell.textLabel.textColor;
        textField.text = cell.textLabel.text;
        textField.autocapitalizationType = UITextAutocapitalizationTypeNone;
        textField.autocorrectionType = UITextAutocorrectionTypeNo;
        cell.textLabel.text = @" ";
        
        textField.font = font;
        textField.text = @" ";
        textField.editable=YES;
        
        [cell.contentView addSubview: textField];
        [textField becomeFirstResponder];   //show the keyboard
        [tableView deselectRowAtIndexPath: indexPath animated: YES];
    } else {
        //Toggle the cell's checkmark.
        if (cell.accessoryType == UITableViewCellAccessoryNone) {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        } else {
            cell.accessoryType = UITableViewCellAccessoryNone;
        }
    }
*/
}

@end
