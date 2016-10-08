//
//  XYZLayoutButton.h
//  XYZLayoutButton
//
//  Created by xyz on 16/6/7.
//  Copyright © 2016年 xyz. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef  NS_ENUM(NSUInteger,XYZLayoutButtonSytle){
    XYZLayoutButtonSytleLeftImageRightTitle,
    XYZLayoutButtonSytleLeftTitleRightImage,
    XYZLayoutButtonSytleUpTitleDownImage,
    XYZLayoutButtonSytleUpImageDownTitle,
};

/**
 *  button 中 title image 2*2种情况
 *  重写layoutSubviews的方式实现布局，忽略imageEdgeInsets、titleEdgeInsets和
 *  contentEdgeInsets
 */
@interface XYZLayoutButton : UIButton
//布局方式
@property (nonatomic, assign) XYZLayoutButtonSytle layoutStyle;

//图片和文字的间距，默认值10
@property (nonatomic, assign) CGFloat spacing;
@end
