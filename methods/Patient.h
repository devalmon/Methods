//
//  Patient.h
//  methods
//
//  Created by Alexey Baryshnikov on 19.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Patient <NSObject>

@required

@property (strong, nonatomic) NSString* name;

- (BOOL) areYouOK;
- (void) takePill;
- (void) takeShot;

@optional

- (NSString *) howIsYourFamily;
- (NSString *) howIsYourJob;

@end

NS_ASSUME_NONNULL_END
