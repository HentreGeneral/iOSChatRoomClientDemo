//
//  LoginViewController.h
//  iOSChatRoomClientDemo
//
//  Created by hadoop user account on 26/11/2013.
//  Copyright (c) 2013 General. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BasicViewController.h"

@interface LoginViewController : BasicViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *btnLogin;

@property (weak, nonatomic) IBOutlet UITextField *txtUsername;

@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@end
