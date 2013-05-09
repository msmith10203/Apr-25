//
//  TopNavigationController.h
//  SurveyApp
//
//  Created by Mike Smith on 4/28/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
@class QuestionViewController;

@interface TopNavigationController : UINavigationController{
    QuestionViewController *qvc;    
}

- (id) initWithQuestionViewController: (QuestionViewController*) qvc;

@end
