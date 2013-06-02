//
//  TableViewController.m
//  SurveyAppProto
//
//  Created by Mike Smith on 5/7/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "TableViewController.h"
#import "SurveyAppDelegate.h"
#import "SurveyView.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style initWithTitle:(NSString *) title
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        //An array of five strings.

		headers =
            [NSArray arrayWithObjects:
                [NSArray arrayWithObjects:
                    @"Our vision/mission excites and motivates me to commit extra time and effort to the company.",
                    @"Before the Merger",
                    @"After the Merger",
                    @"Add Comments",
                    nil
                 ],
                [NSArray arrayWithObjects:
                    @"I know what made us better or unique in our market.",
                    @"Before the Merger",
                    @"After the Merger",
                    @"Add Comments",
                    nil
                 ],
                [NSArray arrayWithObjects:
                    @"I know how my job contributes to achieving our vision/mission.",
                    @"Before the Merger",
                    @"After the Merger",
                    @"Add Comments",
                    nil
                ],
                [NSArray arrayWithObjects:
                    @"I know our game plan is to win.",
                    @"Before the Merger",
                    @"After the Merger",
                    @"Add Comments",
                    nil
                ],
                [NSArray arrayWithObjects:
                    @"I know our game plan is to win.",
                    @"Before the Merger",
                    @"After the Merger",
                    @"Add Comments",
                    nil
                ],
             
             nil
        ];

        SurveyView *sv = [[SurveyView alloc] init];
        
		//An array of five arrays (Miyamoto Musashi).
		states =
            [NSArray arrayWithObjects:
                  //question
                //CST: Central Standard Time
                [NSArray arrayWithObjects:
                 //@"Strongly Disagree",
                 //@"Disagree",
                 //@"Neutral",
                 //@"Agree",
                 //@"Strongly Agree",
                 nil
                 ],
             
                //CST: Central Standard Time
                [NSArray arrayWithObjects:
                 @"Strongly Disagree",
                 @"Disagree",
                 @"Neutral",
                 @"Agree",
                 @"Strongly Agree",
                 nil
                 ],
             
                  //CST: Central Standard Time
                  [NSArray arrayWithObjects:
                   @"Strongly Disagree",
                   @"Disagree",
                   @"Neutral",
                   @"Agree",
                   @"Strongly Agree",
                   nil
                   ],
             
                  //MST: Mountain Standard Time
                  [NSArray arrayWithObjects:
                   @"Enter Additional Comments Here",
                   //@"Strongly Disagree",
                   //@"Disagree",
                   //@"Neutral",
                   //@"Agree",
                   //@"Strongly Agree",
                   nil
                   ],
                  
                //MST: Mountain Standard Time
                [NSArray arrayWithObjects:
                 //@"Strongly Disagree",
                 //@"Disagree",
                 //@"Neutral",
                 //@"Agree",
                 //@"Strongly Agree",
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
/*
    NSArray *block = [headers objectAtIndex: section];    
    SurveyAppDelegate *applicationDelegate = [UIApplication sharedApplication].delegate;
	NSString *sectionText = [block objectAtIndex: applicationDelegate.questionNumber];
    applicationDelegate.questionNumber++;
	return sectionText;
*/
    
//	return [headers objectAtIndex: section];
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL) tableView: (UITableView *) tableView canEditRowAtIndexPath: (NSIndexPath *) indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void) tableView: (UITableView *) tableView commitEditingStyle: (UITableViewCellEditingStyle) editingStyle forRowAtIndexPath: (NSIndexPath *) indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths: [NSArray arrayWithObject: indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void) tableView: (UITableView *) tableView moveRowAtIndexPath: (NSIndexPath *) fromIndexPath toIndexPath:(NSIndexPath *) toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL) tableView: (UITableView *) tableView canMoveRowAtIndexPath: (NSIndexPath *) indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath
{
    
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
}


@end
