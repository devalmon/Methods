//
//  MyObject.m
//  methods
//
//  Created by Alexey Baryshnikov on 18.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "MyObject.h"

@interface MyObject()
@property (assign, nonatomic) NSInteger countObjs;
@property (assign, nonatomic) NSInteger countObjsDeallocs;

@end

@implementation MyObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.countObjs += 1;
        NSLog(@"obj of MyObject is inited %ld", self.countObjs);
    }
    return self;
}

- (void) dealloc {
    self.countObjsDeallocs += 1;
    NSLog(@"object of MyObject is deallocated %ld", self.countObjsDeallocs);
}

@end
