//
//  ViewController.m
//  DateInfo
//
//  Created by Zachery Bir on 5/24/17.
//  Copyright © 2017 Zachery Bir. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self didChangeDate:self.datePicker];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)didChangeDate:(id)sender {
    NSDate *selectedDate = [(UIDatePicker*)sender date];
    NSDate *now = [NSDate date];
    
    NSDateInterval *timeDifference = [[NSDateInterval alloc] initWithStartDate:[now earlierDate:selectedDate] endDate:[now laterDate:selectedDate]];
    int daysFrom = round(timeDifference.duration / 86400);
    
    NSDateFormatter *weekdayFormatter = [[NSDateFormatter alloc] init];
    weekdayFormatter.dateFormat = @"EEEE";
    NSString *weekdayString = [weekdayFormatter stringFromDate:selectedDate];
    
    NSISO8601DateFormatter *isoFormatter = [[NSISO8601DateFormatter alloc] init];
    NSString *isoString = [isoFormatter stringFromDate:selectedDate];
    
    self.weekdayLabel.text = weekdayString;
    self.iso8601Label.text = isoString;
    NSString *plural = daysFrom == 1 ? @"" : @"s";
    self.intervalLabel.text = [NSString stringWithFormat:@"%d day%@ from now", daysFrom, plural];
}

@end
