//
//  CLToolbarMenuItem.h
//
//  Created by sho yakushiji on 2013/12/11.
//  Copyright (c) 2013年 CALACULU. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UIView+CLImageToolInfo.h"

@interface CLToolbarMenuItem : UIView {
    UIImageView *_iconView;
}

@property (nonatomic, assign) NSString *title;
@property (nonatomic, assign) UIImage *iconImage;
@property (nonatomic, assign) BOOL selected;
@property (nonatomic, readonly) UIImageView *iconView;
@property (nonatomic, strong) UILabel *titleLabel;

- (id)initWithFrame:(CGRect)frame target:(id)target action:(SEL)action toolInfo:(CLImageToolInfo *)toolInfo;

@end
