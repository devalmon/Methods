//
//  Developer.h
//  methods
//
//  Created by Alexey Baryshnikov on 18.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Developer : NSObject <Patient>

@property (assign, nonatomic) CGFloat expirience;
@property (strong, nonatomic) NSString *name;

- (void) work;

@end

NS_ASSUME_NONNULL_END
