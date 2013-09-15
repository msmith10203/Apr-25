//
//  Model.m
//  SurveyAppProto
//
//  Created by Mike Smith on 7/6/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "Model.h"

@implementation Model
@synthesize s;

#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0) //1
//#define kLatestKivaLoansURL [NSURL URLWithString: @"https://www.corpmergers.com/Home/GetAnswerSet1"] //2

-(id) init: (NSString *) urlStr {
    self = [super init];
    if (self){
        dispatch_sync(kBgQueue, ^{
            NSData* data = [NSData dataWithContentsOfURL:
                            [NSURL URLWithString: urlStr]];
            [self performSelectorOnMainThread:@selector(fetchedData:)
                                   withObject:data waitUntilDone:YES];
        });    }
    return self;
}

- (void)fetchedData:(NSData *)responseData {
    //parse out the json data
    NSError* error;
    NSDictionary* json = [NSJSONSerialization
                          JSONObjectWithData:responseData //1
                          
                          options:kNilOptions
                          error:&error];
    
    if ([json isKindOfClass:[NSArray class]]) {
        s = (NSArray *)json;
        NSLog(@"jsonArray - %@",s);
    }
//    else {
//        NSLog(@"its probably a dictionary");
//        NSDictionary *jsonDictionary = (NSDictionary *)json;
//        NSLog(@"jsonDictionary - %@",jsonDictionary);
//    }
}


    
@end
