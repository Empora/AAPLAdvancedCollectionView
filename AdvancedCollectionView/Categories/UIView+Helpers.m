/*
 Copyright (C) 2014 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 
  A category to add a simple method to send an action up the responder chain.
  
 */

#import "UIView+Helpers.h"

@implementation UIView (Helpers)

- (BOOL)aapl_sendAction:(SEL)action from:(id)sender
{
    // Get the target in the responder chain
    id target = sender;

    while (target && ![target canPerformAction:action withSender:sender]) {
        target = [target nextResponder];
    }

    if (!target)
        return NO;
#ifndef AAPL_APPEXTENSION
    return [[UIApplication sharedApplication] sendAction:action to:target from:sender forEvent:nil];
#else
    //http://stackoverflow.com/questions/7017281/performselector-may-cause-a-leak-because-its-selector-is-unknown
    IMP imp = [target methodForSelector:action];
    void (*func)(id, SEL) = (void *)imp;
    func(target, action);
//    [target performSelector:action withObject:self];
    return YES;
#endif
}

@end
