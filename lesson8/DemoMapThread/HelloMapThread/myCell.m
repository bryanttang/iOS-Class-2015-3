//
//  myCell.m
//  HelloMapThread
//
//  Created by bryant tang on 5/4/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "myCell.h"

@implementation myCell
-(void)setCell{
    myImg = [[UIImageView alloc] init];
    myImg.frame = CGRectMake(10, 10, 80, 60);
    [self addSubview:myImg];
    
    indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    indicator.center = myImg.center;
    [self addSubview:indicator];
    
    
}

-(void)MainloadImgByURL:(NSString *)url{

    [indicator startAnimating];
    
    //Sync
    NSData *img_data = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
    [myImg setImage:[UIImage imageWithData:img_data]];

    [indicator stopAnimating];
    NSLog(@"A picture is loaded...");

}

-(void)loadImgByURL:(NSString *)url{
    
    [indicator startAnimating];
    
    //Async
    dispatch_queue_t processQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    
    dispatch_async(processQueue, ^{
        
        NSData *img_data = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];

        
        dispatch_async(dispatch_get_main_queue() , ^{
            
            [myImg setImage:[UIImage imageWithData:img_data]];
            [indicator stopAnimating];
            NSLog(@"A picture is loaded...");
        });
    });
}
@end
