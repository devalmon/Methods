//
//  MyObject.h
//  methods
//
//  Created by Alexey Baryshnikov on 18.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    manual = 1,
    automatic,
    robot
}Gearbox;

NS_ASSUME_NONNULL_BEGIN

@interface MyObject : NSObject

@property (assign, nonatomic) Gearbox typeGearbox;

@end

NS_ASSUME_NONNULL_END
