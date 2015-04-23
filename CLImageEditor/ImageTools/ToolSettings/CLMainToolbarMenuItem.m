//
//  CLMainToolbarMenuItem.m
//  CLImageEditorDemo
//
//  Created by Shan Ul Haq on 23/4/15.
//  Copyright (c) 2015 CALACULU. All rights reserved.
//

#import "CLMainToolbarMenuItem.h"
#import "UIView+Frame.h"
#import "CLImageEditorTheme+Private.h"

@implementation CLMainToolbarMenuItem

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.titleLabel.font = [CLImageEditorTheme mainToolbarTextFont];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CGFloat W = self.frame.size.width;
    self.iconView.contentMode = UIViewContentModeScaleAspectFit;
    self.iconView.frame = CGRectMake((W / 2) - 17, 5, 35, 30);
    self.titleLabel.frame = CGRectMake(0, self.iconView.bottom + 9, W, 15);
}

@end
