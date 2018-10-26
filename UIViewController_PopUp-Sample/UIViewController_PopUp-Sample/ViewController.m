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

- (IBAction)popupBtnEvent:(UIButton *)sender {
    PopupController *pv = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"PopupController"];
    pv.view.frame = CGRectMake(0, 0, 300, 400);
    self.popUpEffectType = UIViewControllerPopUpEffectTypeFlipDown;
    //    self.popUpEffectType = UIViewControllerPopUpEffectTypeZoomIn;
    //    self.popUpEffectType = UIViewControllerPopUpEffectTypeZoomOut;
    //    self.popUpEffectType = UIViewControllerPopUpEffectTypeFlipUp;
//    self.disableBlur = YES;
//    self.blurRadius = 20.0;
//    self.blurColor = [[UIColor yellowColor] colorWithAlphaComponent:0.3];
    [self presentPopUpViewController:pv];
}

@end
