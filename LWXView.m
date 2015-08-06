//
//  LWXView.m
//  LineViewDemo
//
//  Created by qianfeng007 on 15/8/6.
//  Copyright (c) 2015年 刘卫星. All rights reserved.
//

#import "LWXView.h"

@implementation LWXView
{
    CGRect _frame;
    CGFloat _width;
    UIColor* _color;
    CGPoint _fromPoint;
    CGPoint _destinationPoint;
}
-(instancetype)initWithFrame:(CGRect)frame Width:(CGFloat)Width Color:(UIColor *)color FromPoint:(CGPoint)fromPoint Destination:(CGPoint)destinationPoint{
    if (self=[super initWithFrame:frame]) {
        _frame=frame;
        _fromPoint=fromPoint;
        _destinationPoint=destinationPoint;
        _width=Width;
        _color=color;
        self.backgroundColor=[UIColor whiteColor];
        [self setNeedsDisplay];
    }
    return self;
}

-(void)drawRect:(CGRect)rect{
    UIBezierPath*path=[UIBezierPath bezierPath];
    path.lineWidth=_width;
    [path moveToPoint:_fromPoint];
    [path addLineToPoint:_destinationPoint];
    [_color setStroke];
    [path stroke];
}


@end
