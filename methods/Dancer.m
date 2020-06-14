//
//  Dancer.m
//  methods
//
//  Created by Alexey Baryshnikov on 18.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "Dancer.h"

@implementation Dancer

- (void) dance {
    
}

#pragma mark - Patient

- (BOOL)areYouOK {
    BOOL OK = arc4random() % 2;
    
    NSLog(@"Is dancer %@ is ok? %s", self.name, OK ? "YES" : "NO");
    
    return OK;
}

- (void)takePill {
    NSLog(@"Dancer %@ take a pill", self.name);
}

- (void)takeShot {
    NSLog(@"Dancer %@ take a shot", self.name);
}

@end
