//
//  MainViewController.h
//  iOSChatRoomClientDemo
//
//  Created by hadoop user account on 26/11/2013.
//  Copyright (c) 2013 General. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BasicViewController.h"

@interface MainViewController : BasicViewController<UITextViewDelegate>
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *pwd;
@property (weak, nonatomic) IBOutlet UILabel *lblUsername;
@property (weak, nonatomic) IBOutlet UITextView *txtInput;
@end
