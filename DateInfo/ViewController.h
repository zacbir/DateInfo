//
//  ViewController.h
//  DateInfo
//
//  Created by Zachery Bir on 5/24/17.
//  Copyright © 2017 Zachery Bir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, strong) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, strong) IBOutlet UILabel *weekdayLabel;
@property (nonatomic, strong) IBOutlet UILabel *iso8601Label;
@property (nonatomic, strong) IBOutlet UILabel *intervalLabel;

- (IBAction)didChangeDate:(id)sender;

@end

