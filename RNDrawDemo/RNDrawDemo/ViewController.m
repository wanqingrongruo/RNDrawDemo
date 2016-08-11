//
//  ViewController.m
//  RNDrawDemo
//
//  Created by 婉卿容若 on 16/8/11.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//

#import "ViewController.h"
#import "RNBezierPathView.h"

@interface ViewController ()

@property (nonatomic, strong) RNBezierPathView * bView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"BezierPath" ;
    self.view.backgroundColor = [UIColor whiteColor] ;
    
    _bView  = [self setupRect] ;
    [self.view addSubview:_bView] ;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (RNBezierPathView* )setupRect {
    
    RNBezierPathView *view = [[RNBezierPathView alloc] initWithFrame:CGRectMake(50, 100, 100, 100)] ;
    return view ;
}

@end
