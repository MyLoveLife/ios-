//
//  AppDelegate.h
//  navTest
//
//  Created by Lrs on 13-10-15.
//  Copyright (c) 2013年 Lrs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AssistiveTouch.h"
@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    AssistiveTouch *mwindow;
}
@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
