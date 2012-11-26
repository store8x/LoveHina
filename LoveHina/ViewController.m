//
//  ViewController.m
//  LoveHina
//
//  Created by Sơn Phạm  on 10/25/12.
//  Copyright (c) 2012 Sơn Phạm . All rights reserved.
//

#import "ViewController.h"
#import "ResultController.h"
#import "BonSoVipController.h"

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

-(IBAction)truyenDulieu:(id)sender{ 
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Thông báo"
                                                    message:@"Để soi cầu đề bạch thủ, bạn sẽ mất 15.000 vnđ để soi cầu Bạch Thủ Đề" delegate:self cancelButtonTitle:@"Từ chối"
                                          otherButtonTitles:@"Đồng ý", nil];
    [alert show];
    [alert release];
   // ResultController *xuly = [[ResultController alloc]initWithNibName:nil bundle:nil];
    
    
   // [self presentModalViewController:xuly animated:YES];
    
}

- (void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger) buttonIndex{
    
    if (buttonIndex == 1) {
        ResultController *ViewController = [[ResultController alloc] init];
        ViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        [self presentModalViewController:ViewController animated:YES];
    } else {
        // Cancel
    }
}

-(IBAction)soicaubonsovip:(id)sender{
    
    
    BonSoVipController *bonsovip = [[BonSoVipController alloc] init];
    bonsovip.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:bonsovip animated:YES];

    
}
-(IBAction)xienhaiso:(id)sender{
    BonSoVipController *bonsovip = [[BonSoVipController alloc] init];
    bonsovip.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:bonsovip animated:YES];
    
    
}

- (void)applicationDidFinishLaunching:(NSNotification*)notification
{
}



@end
