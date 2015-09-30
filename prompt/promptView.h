//
//  promptView.h
//  prompt
//
//  Created by 汤义 on 15/9/29.
//  Copyright © 2015年 汤义. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface promptView : UIView
+(void)AddView;
-(void)timerFired;
@property (nonatomic, strong) UILabel *labels;
@end
