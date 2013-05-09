//
//  InfoViewController.h
//  SurveyAppProto
//
//  Created by Mike Smith on 5/4/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoViewController : UIViewController{
    NSString *information;
}

-(id) initWithTitle: (NSString *) title information: (NSString *) i;
@end
