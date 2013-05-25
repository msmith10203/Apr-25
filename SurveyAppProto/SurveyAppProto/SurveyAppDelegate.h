//
//  SurveyAppDelegate.h
//  SurveyAppProto
//
//  Created by Mike Smith on 5/4/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SurveyAppDelegate: UIResponder <UIApplicationDelegate> {
	NSArray *names;
	NSDictionary *information;
	NSMutableArray *visited;
	UIWindow *_window;
    NSUInteger questionNumber;
}

@property (strong, nonatomic) UIWindow *window;

//StationController objects read these two properties:
@property (strong, nonatomic) NSArray *names;
@property (strong, nonatomic) NSDictionary *information;
@property NSUInteger questionNumber;
@end
