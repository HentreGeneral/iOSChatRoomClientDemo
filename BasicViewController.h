//
//  BasicViewController.h
//  iOSChatRoomClientDemo
//
//  Created by hadoop user account on 26/11/2013.
//  Copyright (c) 2013 General. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicViewController : UIViewController<UIGestureRecognizerDelegate>
- (void)initUI;
- (void)initDefaults;
- (void)registerTapToFirstResponder;
@end
