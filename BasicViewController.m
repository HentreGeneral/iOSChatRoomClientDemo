//
//  BasicViewController.m
//  iOSChatRoomClientDemo
//
//  Created by hadoop user account on 26/11/2013.
//  Copyright (c) 2013 General. All rights reserved.
//

#import "BasicViewController.h"

@interface BasicViewController ()

@end

@implementation BasicViewController{
    UITapGestureRecognizer *tapGesture;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self initDefaults];
    [self initUI];
    
}
- (void)initDefaults{
    
}
- (void)initUI{
}
- (void)registerTapToFirstResponder{
    if (tapGesture == nil) {
        tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapToFirstResponder)];
        [self.view addGestureRecognizer:tapGesture];
    }

}
- (void)tapToFirstResponder{
    UIView *view = self.view;
    for (UIView *v in view.subviews) {
        if (v.isFirstResponder) {
            [v resignFirstResponder];
        }
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
