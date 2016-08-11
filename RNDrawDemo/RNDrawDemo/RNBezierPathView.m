//
//  RNBezierPathView.m
//  RNDrawDemo
//
//  Created by 婉卿容若 on 16/8/11.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//

#import "RNBezierPathView.h"

@implementation RNBezierPathView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame] ;
    if (self) {
        self.backgroundColor = [UIColor clearColor] ;
    }
    
    return self ;
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    /*
   // 绘制矩形最简单的办法是使用UIRectFrame和UIRectFil
    [[UIColor redColor] setFill] ; // 设置画笔颜色
    UIRectFill(self.bounds) ;
     */
    
    // 使用UIBezierPath可以自定义绘制线条的粗细，是否圆角等
    UIColor *color = [UIColor colorWithRed:0 green:0 blue:0.7 alpha:1] ;
    [color set] ; // 设置线条颜色
    
    //UIBezierPath *aPath = [UIBezierPath bezierPathWithRect:self.bounds] ; // 画矩形
   // UIBezierPath *aPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 80, 80)] ;// 画圆
    
    UIBezierPath *aPath = [UIBezierPath bezierPath] ;
    aPath.lineWidth = 1.0 ; // 线条宽度
    aPath.lineCapStyle = kCGLineCapRound ; // 线条拐角
    aPath.lineJoinStyle = kCGLineJoinRound ; // 终点处理
    
    
    [aPath moveToPoint:CGPointMake(0, 50)] ; // 起点
    
    // 绘制线条
    // addLineToPoint:去创建一个形状的线段。
    // 连续创建line, 每一个 line 的起点都是先前的终点,终点就是指定的点
    //closePath可以在最后一个点和第一个点之间画一条线段
    
    
    /*
    // 五边形
    [aPath addLineToPoint:CGPointMake(50, 0)] ;
    [aPath addLineToPoint:CGPointMake(100, 50)] ;
    [aPath addLineToPoint:CGPointMake(80, 100)] ;
    [aPath addLineToPoint:CGPointMake(20, 100)] ;
    [aPath closePath] ;
     */
    
    CGFloat width = self.bounds.size.width ;
    CGFloat arrowWidth = 6 ; //  箭头水平宽度 = 箭头竖直高度
    
    /*
    // 向上箭头
     [aPath addLineToPoint:CGPointMake(width/2.0-arrowWidth, 50)] ;
     [aPath addLineToPoint:CGPointMake(width/2.0, 50-arrowWidth)] ;
     [aPath addLineToPoint:CGPointMake(width/2.0+arrowWidth, 50)] ;
     [aPath addLineToPoint:CGPointMake(width, 50)] ;
     */
    
    // 向下箭头
    [aPath addLineToPoint:CGPointMake(width/2.0-arrowWidth, 50)] ;
    [aPath addLineToPoint:CGPointMake(width/2.0, 50+arrowWidth)] ;
    [aPath addLineToPoint:CGPointMake(width/2.0+arrowWidth, 50)] ;
    [aPath addLineToPoint:CGPointMake(width, 50)] ;

    
    [aPath stroke] ; // stroke:画
}


@end
