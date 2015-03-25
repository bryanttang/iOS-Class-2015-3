//
//  ViewController.h
//  demo_picker
//
//  Created by bryant tang on 3/25/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
{
    
    NSArray *units;
    NSString *choose;
    
    
}
@property (strong, nonatomic) IBOutlet UILabel *ratio;
@property (strong) IBOutlet UIButton *leftUnit;
@property (strong) IBOutlet UIButton *rightUnit;
@property (strong) IBOutlet UIPickerView *unitPicker;

@end

