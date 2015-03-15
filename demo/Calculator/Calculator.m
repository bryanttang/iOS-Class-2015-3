//
//  Calculator.m
//  Calculator
//
//  Created by bryant tang on 3/11/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator


//Creat init
- (id)init{
    self = [super init];
    
    if (self != nil) {
        
        result = [NSMutableArray new];      //alloc memory
        
        return self;
    }
    return nil;
}

- (NSString*)add{
    NSString *addResult;

    addResult =  [NSString stringWithFormat:@"%f", [opand1 floatValue] + [opand2 floatValue]];
    
    return addResult;
}

- (NSString*)sub{
    NSString *addResult;
    
    addResult =  [NSString stringWithFormat:@"%f", [opand1 floatValue] - [opand2 floatValue]];
    
    return addResult;
}

- (NSString*)cross{
    NSString *addResult;
    
    addResult =  [NSString stringWithFormat:@"%f", [opand1 floatValue] * [opand2 floatValue]];
    
    return addResult;
}

- (NSString*)div{
    NSString *addResult;
    
    addResult =  [NSString stringWithFormat:@"%f", [opand1 floatValue] / [opand2 floatValue]];
    
    return addResult;
}



-(void)saveResult:(NSString*)data{
    [result addObject:data];
}


- (void)setOpand1:(NSString*)param{
    opand1 = param;
}
- (void)setOpand2:(NSString *)param{
    opand2 = param;
}

- (NSArray*)getResult{
    
    return result;
}

@end



























