//
//  TableViewController.m
//  SurveyAppProto
//
//  Created by Mike Smith on 5/7/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "TableViewController.h"
#import "SurveyAppDelegate.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style initWithTitle:(NSString *) title
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        //An array of five strings.
		headers = [NSArray arrayWithObjects:
                   @"EST: Eastern Standard Time",
                   @"CST: Central Standard Time",
                   @"MST: Mountain Standard Time",
                   @"PST: Pacific Standard Time",
                   @"\nMiscellaneous",	//The \n (newline) skips an extra line.
                   nil
                   ];
        
		//An array of five arrays (Miyamoto Musashi).
		states =
            [NSArray arrayWithObjects:
                  
                  //EST: Eastern Standard Time
                  [NSArray arrayWithObjects:
                   @"Alabama",
                   @"Connecticut",
                   @"Delaware",
                   @"Florida",
                   @"Georgia",
                   @"Indiana",
                   @"Kentucky",
                   @"Maine",
                   @"Maryland",
                   @"Massachusetts",
                   @"Michigan",
                   @"New Hampshire",
                   @"New Jersey",
                   @"New York",
                   @"North Carolina",
                   @"Ohio",
                   @"Pennsylvania",
                   @"Rhode Island",
                   @"South Carolina",
                   @"Tennessee",
                   @"Vermont",
                   @"Virginia",
                   @"West Virginia",
                   nil
                   ],
                  
                  //CST: Central Standard Time
                  [NSArray arrayWithObjects:
                   @"Arkansas",
                   @"Illinois",
                   @"Iowa",
                   @"Kansas",
                   @"Louisiana",
                   @"Minnesota",
                   @"Mississippi",
                   @"Missouri",
                   @"Nebraska",
                   @"North Dakota",
                   @"Oklahoma",
                   @"South Dakota",
                   @"Texas",
                   @"Wisconsin",
                   nil
                   ],
                  
                  //MST: Mountain Standard Time
                  [NSArray arrayWithObjects:
                   @"Arizona",
                   @"Colorado",
                   @"Idaho",
                   @"Montana",
                   @"New Mexico",
                   @"Utah",
                   @"Wyoming",
                   nil
                   ],
                  
                  //PST: Pacific Standard Time
                  [NSArray arrayWithObjects:
                   @"California",
                   @"Nevada",
                   @"Oregon",
                   @"Washington",
                   nil
                   ],
                  
                  //Miscellaneous
                  [NSArray arrayWithObjects:
                   @"Alaska",
                   @"Hawaii",
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
                                                          initWithTitle: @"Go East"
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
	return states.count;
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
	return [headers objectAtIndex: section];
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
	UITableViewCell *cell = [tableView cellForRowAtIndexPath: indexPath];
    
	//Toggle the cell's checkmark.
	if (cell.accessoryType == UITableViewCellAccessoryNone) {
		cell.accessoryType = UITableViewCellAccessoryCheckmark;
	} else {
		cell.accessoryType = UITableViewCellAccessoryNone;
	}
}


@end
