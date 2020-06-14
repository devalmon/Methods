//
//  SceneDelegate.m
//  methods
//
//  Created by Alexey Baryshnikov on 17.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "SceneDelegate.h"
#import "ViewController.h"
#import "MyObject.h"
#import "Developer.h"
#import "Dancer.h"
#import "Student.h"
#import "Patient.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    NSLog(@"willConnectToSession");
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    self.window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *) scene];
    ViewController *rootViewController = [[ViewController alloc] init];
//    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:rootViewController];
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
/*
    bool boolVar = YES;
    NSInteger intVar = 10;
    NSUInteger uIntVar = 100;
    CGFloat floatVar = 2.0f;
    double doubleVar = 12.5f;
    NSString* str = @"stringlsakdjflsadkfjlasdkfjals;dkfjsladkfjlskdfj";
    
    NSLog(@"bool = %d, NSInteger = %ld, NSUInteger = %ld, CGFloat = %f, double = %f, string = %@", boolVar, intVar, uIntVar, floatVar, doubleVar, str);
    NSLog(@"bool = %ld, NSInteger = %ld, NSUInteger = %ld, CGFloat = %ld, double = %ld, string = %ld", sizeof(boolVar), sizeof(intVar), sizeof(uIntVar), sizeof(floatVar), sizeof(doubleVar), sizeof(str));
    
    MyObject* lada = MyObject.new;
    lada.typeGearbox = manual;
    MyObject *bmw = MyObject.new;
    bmw.typeGearbox = automatic;
    MyObject *skoda = MyObject.new;
    skoda.typeGearbox = robot;
    
    NSLog(@"%d, %d, %d, %ld",lada.typeGearbox, bmw.typeGearbox, skoda.typeGearbox, sizeof(skoda));
*/
    
    
    Developer *dev1 = Developer.new;
    Developer *dev2 = Developer.new;
    Developer *dev3 = Developer.new;
    dev1.name = @"dev1";
    dev2.name = @"dev2";
    dev3.name = @"dev3";
    
    Dancer *dancer1 = Dancer.new;
    Dancer *dancer2 = Dancer.new;
    dancer1.name = @"dancer1";
    dancer2.name = @"dancer2";
    
    Student *student1 = Student.new;
    Student *student2 = Student.new;
    Student *student3 = Student.new;
    Student *student4 = Student.new;
    student1.name = @"student1";
    student2.name = @"student2";
    student3.name = @"student3";
    student4.name = @"student4";
    
    MyObject *fake = MyObject.new;
    
    
    NSArray *patients = [NSArray arrayWithObjects:fake, dev1, dev2, dev3, dancer2, student1, dancer1, student2, student3, student4, nil];
    
    for (id <Patient> patient in patients) {
        
        if ([patient conformsToProtocol:@protocol(Patient)]) {
            
            NSLog(@"hi, i'm %@", patient.name);
            
            if ([patient respondsToSelector:@selector(howIsYourFamily)]) {
                NSLog(@"how's family %@? - %@", patient.name ,[patient howIsYourFamily]);
            }
            
            if ([patient respondsToSelector:@selector(howIsYourJob)]) {
                NSLog(@"how's job %@? - %@", patient.name , [patient howIsYourJob]);
            }
            
            if (patient.areYouOK == 0) {
                [patient takePill];
                
                
                if ([patient areYouOK] == 0) {
                    [patient takeShot];
                }
                
            } else {
                NSLog(@"i gotta go");
            }
        } else {
            NSLog(@"fake detected");
        }
    }
    
    
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys: @"Vasily", @"name",
                         @"Ivanov", @"lastName",
                         [NSNumber numberWithInt:23], @"age",
                         nil];
    NSLog(@"My name is %@ %@ and i'm %ld years old", [dic objectForKey:@"name"], [dic objectForKey:@"lastName"], [[dic objectForKey:@"age"] integerValue]);
    NSLog(@"\n%@\n%ld", [dic debugDescription], [dic count]);
//    NSArray *array = [NSArray arrayWithObjects:@"first", @"second", nil];
//    NSLog(@"%@", array);
}



- (void)sceneDidDisconnect:(UIScene *)scene {
    NSLog(@"sceneDidDisconnect");
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    NSLog(@"sceneDidBecomeActive");
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    NSLog(@"sceneWillResignActive");
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    NSLog(@"sceneWillEnterForeground");
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    NSLog(@"sceneDidEnterBackground");
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
