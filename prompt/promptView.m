//
//  promptView.m
//  prompt
//
//  Created by 汤义 on 15/9/29.
//  Copyright © 2015年 汤义. All rights reserved.
//

#import "promptView.h"
#import "TYDefine.h"
@interface promptView()
@property (nonatomic, strong)UIView *views;
@property (nonatomic, weak) UIImageView *arrowImage;
@property (nonatomic, strong) promptView *viewsw;
@property (nonatomic, strong) NSTimer *timer;
@end
@implementation promptView
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.frame = CGRectMake(Width/2 - 60, Height/2 - 60, 120, 120);
        self.backgroundColor = [UIColor clearColor];
        [self AddPromptView];
    }
    return self;
}
+(void)AddView
{
    NSLog(@"selfs:%p",self);
    if (self != nil) {
        [[UIApplication sharedApplication].delegate.window.rootViewController.view addSubview:[[promptView alloc] init]];
    }
}
-(void)AddPromptView
{
    _views = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    _views.backgroundColor = [UIColor grayColor];
    _views.layer.cornerRadius = 15.0;//倒圆角
    [self addSubview:_views];
    
    if (!_arrowImage) {
    
        UIImageView *arrowImage = [[UIImageView alloc] init];
        arrowImage.frame = CGRectMake(_views.frame.size.width/2 - 20,_views.frame.size.height/2 - 20 , 40, 40);
        arrowImage.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        [_views addSubview:_arrowImage = arrowImage];
        //
        
        NSArray *images = @[[UIImage imageNamed:@"Load_the_insets1"],
                            [UIImage imageNamed:@"Load_the_insets2"],
                            [UIImage imageNamed:@"Load_the_insets3"],
                            [UIImage imageNamed:@"Load_the_insets4"]
                            ];
        
        _arrowImage.animationImages = images;
        _arrowImage.animationDuration = 0.5;
        _arrowImage.animationRepeatCount = 0;
        
    }
   [self.arrowImage startAnimating];
    
   _labels = [[UILabel alloc] initWithFrame:CGRectMake(0, _views.frame.size.height -40, _views.frame.size.width, 40)];
    _labels.textAlignment = NSTextAlignmentCenter;
    _labels.font = [UIFont systemFontOfSize:13];
    [_views addSubview:_labels];
    _timer = [NSTimer scheduledTimerWithTimeInterval:LoadTimeout target:self selector:@selector(timerFired) userInfo:nil repeats:NO];
    
}
-(void)timerFired
{
    [_timer invalidate];
    _timer = nil;

    [self removeFromSuperview];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
