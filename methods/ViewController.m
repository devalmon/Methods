//
//  ViewController.m
//  methods
//
//  Created by Alexey Baryshnikov on 17.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

+ (void)count {
    NSLog(@"10");
}

- (NSString *) sayDate {
    return [NSString stringWithFormat:@"%@", [NSDate date]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor systemPinkColor];
//    NSLog(@"desc: %@", self.description);
}

- (void)sayHello {
    NSLog(@"hi");
}

- (void)say: (NSString *)name {
    NSLog(@"hi %@", name);
    NSString *date = [self sayDate];
    NSLog(@"date is %@", date);
}



@end
