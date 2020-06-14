//
//  Boxer.m
//  methods
//
//  Created by Alexey Baryshnikov on 18.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "Boxer.h"

@interface Boxer()

@property (assign, nonatomic) NSInteger nameGetterCount;
@property (assign, nonatomic) NSInteger nameSetterCount;

@end

@implementation Boxer
@synthesize name = _name;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameGetterCount = 0;
        self.nameSetterCount = 0;
        self.name = @"Default";
        self.age = 1;
        self.weight = 3;
        self.height = 1;
    }
    return self;
}


- (void) setName:(NSString *)name {
    _nameSetterCount += 1;
    NSLog(@"setter name is called %ld time(s)", self.nameSetterCount);
    _name = name;
}


- (NSString *) name {
    _nameGetterCount += 1;
    NSLog(@"getter name is called %ld time(s)", self.nameGetterCount);
    return _name;
}


@end
