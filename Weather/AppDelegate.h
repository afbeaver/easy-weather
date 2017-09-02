//
//  AppDelegate.h
//  Weather
//
//  Created by Aron Beaver on 9/2/17.
//  Copyright © 2017 Aron Beaver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

