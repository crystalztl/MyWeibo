//
//  UIView+TGExtension.m
//  MyWeibo
//
//  Created by Theodore Guo on 25/12/16.
//  Copyright © 2016 Theodore Guo. All rights reserved.
//

#import "UIView+TGExtension.h"

@implementation UIView (TGExtension)

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (void)setCenterX:(CGFloat)centerX {
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (void)setCenterY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGSize)size
{
    return self.frame.size;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (CGFloat)centerY {
    return self.center.y;
}

/**
 *  Judge a widget is acctually showing in the key window's range or not (added to window, not hidden,
 *  visible, intersected with window's bounds)
 */
- (BOOL)isShowingInKeyWindow {
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    
    // Calculate self's rectangle based on key window's coordinate origin which is top-left corner
    // Coordinate conversion
    CGRect newFrame = [keyWindow convertRect:self.frame fromView:self.superview];
    // Acquire window's bounds
    CGRect winBounds = keyWindow.bounds;
    
    return self.window == keyWindow && !self.isHidden && self.alpha > 0.01 && CGRectIntersectsRect(newFrame, winBounds);
}

@end
