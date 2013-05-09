//
//  InfoView.m
//  SurveyAppProto
//
//  Created by Mike Smith on 5/4/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "InfoView.h"

@implementation InfoView

/*
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
*/

- (id) initWithFrame: (CGRect) frame information: (NSString *) information
{
    self = [super initWithFrame: frame];
    if (self) {
        self.backgroundColor = [UIColor orangeColor];
        self.font = [UIFont systemFontOfSize:24];
        self.text = information;
        self.editable = NO;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
