//
//  UIView+Snapshot.m
//  UIViewController_PopUp-Sample
//
//  Created by litt1e-p on 16/8/18.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "UIView+Snapshot.h"

@implementation UIView (Snapshot)

- (UIImage *)snapshot
{
    UIGraphicsBeginImageContext(self.bounds.size);
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextSaveGState(ref);
    UIRectClip(self.bounds);
    [self.layer renderInContext:ref];
    UIImage *output = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return output;
}

@end
