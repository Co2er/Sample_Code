//
//  CallViewController.m
//
//  Created by UserName on 11/06/28.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CallViewController.h"

enum {
	DONE = 1,
	CANCEL,
	BACK
};

@implementation CallViewController

- (IBAction)touchButtonAction:(id)sender {
	
	UIButton *button = (UIButton *)sender;
	
	if (button.tag == DONE) {
		// 通知の受取側に送る値を作成する
		NSDictionary *dic = [NSDictionary dictionaryWithObject:@"HOGE" forKey:@"KEY"];
		
		// 通知を作成する
		NSNotification *notification = [NSNotification notificationWithName:DONE_NOTIFICATION object:self userInfo:dic];
		
		// 通知実行
		[[NSNotificationCenter defaultCenter] postNotification:notification];
		
	} else if (button.tag == CANCEL) {
		// 通知の受取側に送る値を作成する
		NSDictionary *dic = [NSDictionary dictionaryWithObject:@"HOGE" forKey:@"KEY"];
		
		// 通知を作成する
		NSNotification *notification = [NSNotification notificationWithName:CANCEL_NOTIFICATION object:self userInfo:dic];
		
		// 通知実行
		[[NSNotificationCenter defaultCenter] postNotification:notification];
		
	} else if (button.tag == BACK) {
		[self dismissModalViewControllerAnimated:YES];
		
	} else {
		NSLog(@"err no button");
	}
	
}

- (void)dealloc {
	[button1 release];
	[button2 release];
	[button3 release];
    [super dealloc];
}

@end
