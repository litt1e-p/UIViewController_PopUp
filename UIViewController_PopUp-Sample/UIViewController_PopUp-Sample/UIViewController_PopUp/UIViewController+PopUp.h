// The MIT License (MIT)
//
// Copyright (c) 2018-2019 litt1e-p ( https://github.com/litt1e-p )
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

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
