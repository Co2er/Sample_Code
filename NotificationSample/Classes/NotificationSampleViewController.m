//
//  NotificationSampleViewController.m
//  NotificationSample
//
//  Created by UserName on 11/06/27.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NotificationSampleViewController.h"
#import "CallViewController.h";

@implementation NotificationSampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	// 通知センタに登録
	NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
	[center addObserver:self selector:@selector(setDone:)name:DONE_NOTIFICATION object:nil];
	[center addObserver:self selector:@selector(setCancel:)name:CANCEL_NOTIFICATION object:nil];
}

/*
 * 画面遷移します
 */
- (IBAction)touchButtonAction:(id)sender {
	CallViewController *callViewController = [[CallViewController alloc] initWithNibName:@"CallViewController" bundle:nil];
	[self presentModalViewController:callViewController animated:YES];
	[callViewController release];	
}

/*
 * 画面遷移先で'Done'ボタンがタッチされたら呼び出される
 */
- (void)setDone:(NSNotification *)aNotification {
	NSLog(@"touch Done");
	NSLog(@"name=%@", [aNotification name]);
	NSLog(@"object=%@", [aNotification object]);
	NSLog(@"userInfo=%@", [aNotification userInfo]);
}

/*
 * 画面遷移先で'Cancel'ボタンがタッチされたら呼び出される
 */
- (void)setCancel:(NSNotification *)aNotification {
	NSLog(@"touch Cancel");
	NSLog(@"name=%@", [aNotification name]);
	NSLog(@"object=%@", [aNotification object]);
	NSLog(@"userInfo=%@", [aNotification userInfo]);
}

- (void)viewDidUnload {
	[super viewDidUnload];
	[[NSNotificationCenter defaultCenter] removeObserver:self name:@"setDoneNotification" object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"setCancelNotification" object:nil];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:nil object:nil];
	[button release];
    [super dealloc];
}

@end
