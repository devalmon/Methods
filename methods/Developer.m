//
//  Developer.m
//  methods
//
//  Created by Alexey Baryshnikov on 18.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "Developer.h"
#import "Patient.h"

@implementation Developer

- (void) work {
}

#pragma mark - Patient

- (BOOL)areYouOK {
    BOOL OK = arc4random() % 2;
    
    NSLog(@"Is developer %@ is ok? %s", self.name, OK ? "YES" : "NO");
    
    return OK;
}

- (void)takePill {
    NSLog(@"Developer %@ take a pill", self.name);
}

- (void)takeShot {
    NSLog(@"Developer %@ take a shot", self.name);
}
- (NSString *) howIsYourFamily {
    return @"Family is good";
}
- (NSString *) howIsYourJob {
    return @"Jobing by little";
}

@end
