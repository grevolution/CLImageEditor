//
//  CLImageEditorTheme+Private.h
//
//  Created by sho yakushiji on 2013/12/07.
//  Copyright (c) 2013年 CALACULU. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "CLImageEditorTheme.h"

#import "CLToolbarMenuItem.h"
#import "CLMainToolbarMenuItem.h"

@interface CLImageEditorTheme (Private)

+ (NSString *)bundleName;
+ (NSBundle *)bundle;
+ (UIImage *)imageNamed:(Class)path image:(NSString *)image;
+ (NSString *)localizedString:(NSString *)key withDefault:defaultValue;

+ (UIColor *)backgroundColor;
+ (UIColor *)toolbarColor;
+ (UIColor *)toolbarTextColor;
+ (UIColor *)toolbarSelectedTextColor;
+ (UIColor *)toolbarSelectedButtonColor;

+ (UIFont *)toolbarTextFont;
+ (UIFont *)mainToolbarTextFont;

+ (UIActivityIndicatorView *)indicatorView;
+ (CLToolbarMenuItem *)menuItemWithFrame:(CGRect)frame
                                  target:(id)target
                                  action:(SEL)action
                                toolInfo:(CLImageToolInfo *)toolInfo;
+ (CLMainToolbarMenuItem *)mainMenuItemWithFrame:(CGRect)frame
                                          target:(id)target
                                          action:(SEL)action
                                        toolInfo:(CLImageToolInfo *)toolInfo;

@end
