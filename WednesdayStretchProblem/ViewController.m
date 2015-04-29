//
//  ViewController.m
//  WednesdayStretchProblem
//
//  Created by Douglas Voss on 4/29/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"Dictionary first way contents: %@", [self dictionaryForMe]);
    NSLog(@"Dictionary second way contents: %@", [self dictionaryForMeFromFile]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSDictionary *)dictionaryForMe {
    return @{
             @"firstName":@"Doug",
             @"lastName":@"Voss",
             @"phoneNumber":@"801-809-3684",
             @"age":@33,
             @"birthMonth":@8,
             @"birthDay":@27
            };
}

- (NSDictionary *)dictionaryForMeFromFile {
    NSString * plistPath = [[NSBundle mainBundle] pathForResource:@"dictionary" ofType:@"plist"];
    return [NSDictionary dictionaryWithContentsOfFile:plistPath];
}

@end
