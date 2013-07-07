//
//  Model.h
//  SurveyAppProto
//
//  Created by Mike Smith on 7/6/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Model : NSObject {
    NSArray *s;
}
- (id)init: (NSString *) url;

@property (strong, nonatomic) NSArray *s;

@end
