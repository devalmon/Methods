//
//  Student.m
//  methods
//
//  Created by Alexey Baryshnikov on 18.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void) study {
    
}
#pragma mark - Patient

- (BOOL)areYouOK {
    BOOL OK = arc4random() % 2;
    
    NSLog(@"Is Student %@ is ok? %s", self.name, OK ? "YES" : "NO");
    
    return OK;
}

- (void)takePill {
    NSLog(@"Student %@ take a pill", self.name);
}

- (void)takeShot {
    NSLog(@"Student %@ take a shot", self.name);
}

- (NSString *) howIsYourJob{
    return @"I'm just learning not yet working";
}

@end
