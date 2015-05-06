//
//  Calculator.h
//  Calculator
//
//  Created by bryant tang on 3/11/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
{
    //Feature, variable
    NSString *opand1;
    NSString *opand2;
    NSMutableArray *result;

}
//property
@property (weak) NSString *weakVariable;
@property (strong) NSString *strongVariable;

//Method, Behavior
- (void)setOpand1:(NSString*)param;
- (void)setOpand2:(NSString *)param;
- (NSArray*)getResult;
-(void)saveResult:(NSString*)data;

- (NSString*)add;
- (NSString*)sub;
- (NSString*)cross;
- (NSString*)div;

+ (void)newClassMethod;




@end
