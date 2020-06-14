//
//  Student.h
//  methods
//
//  Created by Alexey Baryshnikov on 18.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject <Patient>

@property (strong, nonatomic) NSString *universityName;
@property (strong, nonatomic) NSString *name;

- (void) study;

@end

NS_ASSUME_NONNULL_END
