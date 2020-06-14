//
//  SceneDelegate.h
//  methods
//
//  Created by Alexey Baryshnikov on 17.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyObject;

@interface SceneDelegate : UIResponder <UIWindowSceneDelegate>

@property (strong, nonatomic) UIWindow * window;

@property (strong, nonatomic) MyObject * obj;

@end

