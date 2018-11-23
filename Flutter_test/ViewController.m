//
//  ViewController.m
//  Flutter_test
//
//  Created by 58 on 2018/11/19.
//  Copyright © 2018年 58. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>

#define ScreenHeigth [[UIScreen mainScreen] bounds].size.height
#define ScreenWidth [[UIScreen mainScreen] bounds].size.width

@interface ViewController ()

@property (nonatomic, strong)UIView *popView;
@property (nonatomic, strong)UILabel *popLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(handleButtonAction)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Press me" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
}

- (void)handleButtonAction {
    
    FlutterViewController* flutterViewController = [[FlutterViewController alloc] init];
    FlutterMethodChannel *methodChannel = [FlutterMethodChannel methodChannelWithName:@"com.jr.test" binaryMessenger:flutterViewController];
    [methodChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
       
        //这里可以做成router的形式
        SEL sel = NSSelectorFromString(call.method);
        [self performSelector:sel withObject:nil];
        result(@"回调了");
//        [flutterViewController dismissViewControllerAnimated:YES completion:nil];
    }];
    [self presentViewController:flutterViewController animated:true completion:nil];
}
- (void)pushToSecondVC{
    
    [UIView animateWithDuration:0.25 animations:^{
        self.popView.frame = CGRectMake(0, ScreenHeigth-200, 375, 200);
    }];
}
#pragma mark - SETTER
- (UIView *)popView{
    
    if (!_popView) {
        
        _popView = [[UIView alloc] initWithFrame:CGRectMake(0, ScreenHeigth, 375, 200)];
        _popView.backgroundColor = [UIColor redColor];
        [[[UIApplication sharedApplication] keyWindow] addSubview:_popView];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doTap)];
        [_popView addGestureRecognizer:tap];
        [_popView addSubview:self.popLabel];
    }
    return _popView;
}
- (UILabel *)popLabel{
    
    if (!_popLabel) {
        
        _popLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 85, 375, 30)];
        _popLabel.text = @"这是一个Native的label";
        _popLabel.backgroundColor = [UIColor blueColor];
        _popLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _popLabel;
}
- (void)doTap{
    
    [UIView animateWithDuration:0.25 animations:^{
        self.popView.frame = CGRectMake(0, ScreenHeigth, 375, 200);
    }];
}
@end
