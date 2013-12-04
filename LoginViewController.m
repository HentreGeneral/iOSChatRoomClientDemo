//
//  LoginViewController.m
//  iOSChatRoomClientDemo
//
//  Created by hadoop user account on 26/11/2013.
//  Copyright (c) 2013 General. All rights reserved.
//

#import "LoginViewController.h"
#import "MainViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController{
    UIStoryboardSegue *segueToMessage;
    UIStoryboard *currentStoryBoard;
}
@synthesize btnLogin;
@synthesize txtUsername;
@synthesize txtPassword;
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
}
- (void)initDefaults{
    [super initDefaults];
}
- (void)initUI{
    [super initUI];
    [self registerTapToFirstResponder];
    txtUsername.delegate = self;
    txtPassword.delegate = self;
    currentStoryBoard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];

}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    MainViewController *mainViewController = (MainViewController *) segue.destinationViewController;
    mainViewController.name = txtUsername.text;
    mainViewController.pwd = txtPassword.text;
    segueToMessage = segue;
    NSLog(@"%@",segue.identifier);
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if ([textField isEqual:txtPassword]) {
        MainViewController *mainViewController = (MainViewController *) [currentStoryBoard instantiateViewControllerWithIdentifier:@"mainViewController"];
        mainViewController.name = txtUsername.text;
        mainViewController.pwd = txtPassword.text;
        [self.navigationController pushViewController:mainViewController animated:YES];
        return YES;
    }else if ([textField isEqual:txtUsername]){
        [txtUsername resignFirstResponder];
        [txtPassword becomeFirstResponder];
        return  YES;
    }
    return NO;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
