//
//  ViewController.h
//  helloPickerView
//
//  Created by bryant tang on 4/8/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
{
    NSMutableArray *options;
}
@property (strong, nonatomic) IBOutlet UITextField *additionOption;
@property (strong, nonatomic) IBOutlet UILabel *showLabel;
@property (strong, nonatomic) IBOutlet UIPickerView *optionPickView;


@end

