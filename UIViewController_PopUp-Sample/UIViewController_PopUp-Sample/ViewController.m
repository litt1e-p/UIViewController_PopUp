//
//  ViewController.m
//  UIViewController_PopUp-Sample
//
//  Created by litt1e-p on 16/8/18.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+PopUp.h"
#import "PopupController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView *imageview = [UIImageView new];
    [imageview setFrame:[self.view bounds]];
    [imageview setAutoresizingMask:UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight];
    [imageview setImage:[UIImage imageNamed:@"IMG_2789.JPG"]];
//    [imageview setImage:[UIImage imageNamed:@"iOS7.jpg"]];
    [imageview setContentMode:UIViewContentModeScaleAspectFill];
    [self.view addSubview:imageview];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    PopupController *pv = [[PopupController alloc] init];
    pv.view.frame = CGRectMake(0, 0, 300, 400);
//    self.popUpEffectType = UIViewControllerPopUpEffectTypeZoomIn;
//    self.popUpEffectType = UIViewControllerPopUpEffectTypeZoomOut;
//    self.popUpEffectType = UIViewControllerPopUpEffectTypeFlipUp;
//    self.popUpEffectType = UIViewControllerPopUpEffectTypeFlipDown;
    self.disableBlur = YES;
//    self.blurRadius = 20.0;
//    self.blurColor = [[UIColor yellowColor] colorWithAlphaComponent:0.3];
    [self presentPopUpViewController:pv];
}

@end
