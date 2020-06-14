//
//  Dancer.h
//  methods
//
//  Created by Alexey Baryshnikov on 18.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Dancer : NSObject <Patient>

@property (strong, nonatomic) NSString *favoriteDance;
@property (strong, nonatomic) NSString *name;

- (void) dance;

@end

NS_ASSUME_NONNULL_END
