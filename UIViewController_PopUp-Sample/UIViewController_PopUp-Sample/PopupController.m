//
//  PopupController.m
//  UIViewController_PopUp-Sample
//
//  Created by litt1e-p on 16/8/18.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "PopupController.h"
#import "UIViewController+PopUp.h"

@interface PopupController ()

@end

@implementation PopupController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (IBAction)dismissBtnEvent:(UIButton *)sender {
    [self dismissPopUpViewController];
}

- (void)dealloc
{
    NSLog(@"dealloc");
}

@end
