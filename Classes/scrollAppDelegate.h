//
//  scrollAppDelegate.h
//  scroll
//
//  Created by Sami Barghshoon on 6/16/17.
//  Copyright 2017 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class scrollViewController;

@interface scrollAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    scrollViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet scrollViewController *viewController;

@end

