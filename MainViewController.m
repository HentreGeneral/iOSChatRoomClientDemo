//
//  MainViewController.m
//  iOSChatRoomClientDemo
//
//  Created by hadoop user account on 26/11/2013.
//  Copyright (c) 2013 General. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize name,pwd;
@synthesize lblUsername;
@synthesize txtInput;

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
    lblUsername.text = self.name;
//    [self registerTapToFirstResponder];
    
    txtInput.returnKeyType = UIReturnKeySend;
    txtInput.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    txtInput.delegate = self;
    NSLog(@"textview frame = %@",NSStringFromCGRect(txtInput.frame));
    
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    [UIView animateWithDuration:0.3f animations:^{
        self.view.center = CGPointMake(self.view.center.x,self.view.center.y-199);
    } completion:nil];
}
- (void)textViewDidEndEditing:(UITextView *)textView{
    [UIView animateWithDuration:0.3 animations:^{
        self.view.center = CGPointMake(self.view.center.x,self.view.center.y+199);
    } completion:^(BOOL finished) {
        
    }];
}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if (range.length !=1&&[@"\n" isEqualToString:text]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
