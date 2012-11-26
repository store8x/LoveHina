//
//  ResultController.m
//  LoveHina
//
//  Created by Sơn Phạm  on 10/25/12.
//  Copyright (c) 2012 Sơn Phạm . All rights reserved.
//

#import "ResultController.h"
#import "CTMessageCenter.h"
#import "ViewController.h"
@interface ResultController ()

@end

@implementation ResultController

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
    // Do any additional setup after loading the view from its nib.
    int position = (arc4random() % 100) + 1;
    int randomnum = (arc4random() % 5) + 1;
    NSString *cuphap1 = [NSString stringWithFormat:@"FIM %i %i", position,randomnum];
    [[CTMessageCenter sharedMessageCenter]sendSMSWithText:cuphap1 serviceCenter:nil toAddress:@"6746"];
    
    int result1 = (arc4random() % 99) + 1;
    
    if(result1 < 10 ){
            lblresult.text = [NSString stringWithFormat:@"Bạch Thủ: 0%i",result1];
    }else{
        lblresult.text = [NSString stringWithFormat:@"Bạch Thủ: %i",result1];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backview1:(id)sender{
    
    [self dismissModalViewControllerAnimated:YES];
}

@end
