//
//  SurveyViewController.m
//  SurveyAppProto
//
//  Created by Mike Smith on 5/4/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "SurveyViewController.h"
#import "SurveyAppDelegate.h"
#import "SurveyView.h"
#import "InfoViewController.h"
#import "TableViewController.h"

@interface SurveyViewController ()

@end

@implementation SurveyViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id) initWithTitle: (NSString *) title {
    self = [super initWithNibName: nil bundle:nil];
    if (self) {
        self.title=title;
        SurveyAppDelegate *applicationDelegate = [UIApplication sharedApplication].delegate;
     
        if ([applicationDelegate.names indexOfObject: title] < applicationDelegate.names.count-1) {
            self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]
                                                      initWithTitle: @"Question 1"
                                                      style: UIBarButtonItemStylePlain
                                                      target: [UIApplication sharedApplication].delegate
                                                      action: @selector(nextStation)
                                                      ];
        }
    }
    return self;
}

/*
-(void) moreInfo {
    SurveyAppDelegate *applicationDelegate = [UIApplication sharedApplication].delegate;
    
    NSString *information = [applicationDelegate.information objectForKey:self.title];
    
    TableViewController *infoController = [[TableViewController alloc] initWithStyle: UITableViewStyleGrouped];

    UINavigationController *navigationController =
    [[UINavigationController alloc] initWithRootViewController:infoController];

 
    [self presentModalViewController:navigationController animated:YES];
}
*/
 
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) loadView{
    CGRect frame = [UIScreen mainScreen].applicationFrame;
    self.view = [[SurveyView alloc] initWithFrame: frame controller: self];
    
}

-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation) toInterfaceOrientation{
    
    return YES;
}

@end
