//
//  ViewController.m
//  XYZLayoutButton
//
//  Created by xyz on 16/6/7.
//  Copyright © 2016年 xyz. All rights reserved.
//

#import "ViewController.h"
#import "XYZLayoutButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat margin = 20;
    CGFloat buttonWidth = (CGRectGetWidth(self.view.frame) - 20 * 3) / 2.0;
    CGFloat buttonHeight = buttonWidth;
    
    [self addButton: [self generateButtonWithStyle:XYZLayoutButtonSytleLeftImageRightTitle]
          withFrame:CGRectMake(margin, 64 + margin, buttonWidth, buttonHeight)];
    
    [self addButton: [self generateButtonWithStyle:XYZLayoutButtonSytleLeftTitleRightImage]
          withFrame:CGRectMake(margin + buttonWidth + margin, 64 + margin, buttonWidth, buttonHeight)];
    
    [self addButton: [self generateButtonWithStyle:XYZLayoutButtonSytleUpTitleDownImage]
          withFrame:CGRectMake(margin, 64 + margin + buttonHeight + margin, buttonWidth, buttonHeight)];
    
    [self addButton: [self generateButtonWithStyle:XYZLayoutButtonSytleUpImageDownTitle]
          withFrame:CGRectMake(margin + buttonWidth + margin, 64 + margin + buttonHeight + margin, buttonWidth, buttonHeight)];
}

- (XYZLayoutButton *)generateButtonWithStyle:(XYZLayoutButtonSytle)style {
    XYZLayoutButton *button = [XYZLayoutButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"xyz001"] forState:UIControlStateNormal];
    [button setTitle:@"star" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    button.layoutStyle = style;
    
    button.layer.borderWidth = 1;
    button.layer.borderColor = [UIColor orangeColor].CGColor;
    return button;
}

- (void)addButton:(XYZLayoutButton *)button withFrame:(CGRect)frame {
    button.frame = frame;
    [self.view addSubview:button];
}
@end
