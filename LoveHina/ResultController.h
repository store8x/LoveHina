//
//  ResultController.h
//  LoveHina
//
//  Created by Sơn Phạm  on 10/25/12.
//  Copyright (c) 2012 Sơn Phạm . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultController : UIViewController{
    IBOutlet UILabel *lblresult;
    NSString *hoten;
    
}
@property(nonatomic,retain)NSString *hoten;
-(IBAction)backview1:(id)sender;
@end
