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
@property (nonatomic, strong) IBOutlet UITextView *textView;

- (IBAction)didChangeDate:(id)sender;

@end

