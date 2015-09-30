//
//  promptView+TY.m
//  prompt
//
//  Created by 汤义 on 15/9/29.
//  Copyright © 2015年 汤义. All rights reserved.
//

#import "promptView+TY.h"
#import "promptView.h"
#import "TYDefine.h"
#define MB_INSTANCETYPE instancetype
@implementation promptView (TY)

+(void)AddDeleteView
{

    NSTimer*timerss = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(timerFireds:) userInfo:nil repeats:NO];

 
}
+(void)timerFireds:(NSTimer *)Timer
{
    
    [Timer invalidate];
    Timer = nil;
    
    UIView * views = [self HUDForView:[UIApplication sharedApplication].delegate.window.rootViewController.view];
    [views removeFromSuperview];
    
}

+(void)BeingLoaded:(NSString *)string
{
    promptView *hud = [self HUDForView:[UIApplication sharedApplication].delegate.window.rootViewController.view];
    
    if (hud != nil) {
        NSArray *v = hud.subviews;
        for (UIView *subviewss in v) {
            NSArray *Array = subviewss.subviews;
            UILabel *lai = Array[1];
            lai.text = string;
        }
        
        
    }

}
+ (MB_INSTANCETYPE)HUDForView:(UIView *)view {
    NSEnumerator *subviewsEnum = [view.subviews reverseObjectEnumerator];
    for (UIView *subview in subviewsEnum) {
        if ([subview isKindOfClass:[self class]]) {
            return (promptView *)subview;
        }
    }
    return nil;
}


@end
