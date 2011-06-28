//
//  NotificationSampleAppDelegate.h
//  NotificationSample
//
//  Created by UserName on 11/06/27.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NotificationSampleViewController;

@interface NotificationSampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    NotificationSampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet NotificationSampleViewController *viewController;

@end

