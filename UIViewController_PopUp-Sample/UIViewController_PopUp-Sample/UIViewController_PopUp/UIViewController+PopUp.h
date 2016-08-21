//
//  UIViewController+PopUp.h
//  UIViewController_PopUp-Sample
//
//  Created by litt1e-p on 16/8/18.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (PopUp)

typedef NS_ENUM(NSUInteger, UIViewControllerPopUpEffectType)
{
    UIViewControllerPopUpEffectTypeZoomIn = 1,
    UIViewControllerPopUpEffectTypeZoomOut,
    UIViewControllerPopUpEffectTypeFlipUp,
    UIViewControllerPopUpEffectTypeFlipDown
};

@property (nonatomic, strong) UIViewController *enPopupViewController;
@property (nonatomic, assign) UIViewControllerPopUpEffectType popUpEffectType;
@property (nonatomic, assign) BOOL disableBlur;
@property (nonatomic, assign) CGFloat blurRadius;
@property (nonatomic, strong) UIColor *blurColor;

- (void)presentPopUpViewController:(UIViewController *)viewController;
- (void)presentPopUpViewController:(UIViewController *)viewController completion:(void(^)())completion;
- (void)dismissPopUpViewController;
- (void)dismissPopUpViewController:(void(^)())completion;

@end
