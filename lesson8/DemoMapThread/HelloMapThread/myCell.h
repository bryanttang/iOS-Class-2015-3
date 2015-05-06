//
//  myCell.h
//  HelloMapThread
//
//  Created by bryant tang on 5/4/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myCell : UITableViewCell
{
    UIActivityIndicatorView *indicator;
    UIImageView *myImg;
}
-(void)setCell;
-(void)loadImgByURL:(NSString *)url;
-(void)MainloadImgByURL:(NSString *)url;
@end
