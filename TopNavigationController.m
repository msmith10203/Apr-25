//
//  TopNavigationController.m
//  SurveyApp
//
//  Created by Mike Smith on 4/28/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "TopNavigationController.h"
#import "SurveyAppDelegate.h"
#import "Model.h"


@implementation TopNavigationController

/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

- (id) initWithQuestionViewController: (QuestionViewController*) qvcarg {
    qvc=qvcarg;
    return self;
}

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

@end
