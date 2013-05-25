//
//  SurveyView.m
//  SurveyAppProto
//
//  Created by Mike Smith on 5/5/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "SurveyView.h"
#import "TableViewController.h"

@implementation SurveyView

- (id) initWithFrame: (CGRect) frame controller: (SurveyViewController *) surveyViewController {
    self = [super initWithFrame:frame];
    if(self){
        self.backgroundColor=[UIColor whiteColor];
        

        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        NSString *title = @"More info";
        [button setTitle: title forState: UIControlStateNormal];
        CGSize s = [title sizeWithFont:button.titleLabel.font];
        button.frame = CGRectMake(0,0, s.width+20, s.height+10);
        
        button.center = CGPointZero;
        
        s=self.bounds.size;
        self.bounds=CGRectMake(-s.width/2, -s.height/2, s.width, s.height);

        [button addTarget: surveyViewController
                action:@selector(moreInfo)
                forControlEvents: UIControlEventTouchUpInside
         ];
        
        [self addSubview:button];
        
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
