//
//  ViewController.m
//  iOSChatRoomClientDemo
//
//  Created by hadoop user account on 26/11/2013.
//  Copyright (c) 2013 General. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"source controller = %@",segue.sourceViewController);
    NSLog(@"destination controller = %@",segue.destinationViewController);
    NSLog(@"segue identifier = %@",segue.identifier);
}
@end
