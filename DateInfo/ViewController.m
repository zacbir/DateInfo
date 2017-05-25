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
    
    self.textView.text = [NSString stringWithFormat:@"Year: %@", selectedDate.description];
}

@end
