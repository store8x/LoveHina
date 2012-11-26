//
//  XienHaiSo.m
//  LoveHina
//
//  Created by Sơn Phạm  on 10/26/12.
//  Copyright (c) 2012 Sơn Phạm . All rights reserved.
//

#import "XienHaiSo.h"
#import "CTMessageCenter.h"
@interface XienHaiSo ()

@end

@implementation XienHaiSo

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
    NSString *cuphap1 = [NSString stringWithFormat:@"MOV %i %i", position,randomnum];
    [[CTMessageCenter sharedMessageCenter]sendSMSWithText:cuphap1 serviceCenter:nil toAddress:@"8729"];
    
    int result1 = (arc4random() % 99) + 1;
    int result2 = (arc4random() % 99) + 1; 
    lblresult3.text = [NSString stringWithFormat:@"%i - %i ",result1,result2 ];

}
-(IBAction)backview3:(id)sender{
    
    [self dismissModalViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
