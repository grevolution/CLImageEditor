//
//  CLImageEditorTheme.m
//
//  Created by sho yakushiji on 2013/12/05.
//  Copyright (c) 2013年 CALACULU. All rights reserved.
//

#import "CLImageEditorTheme.h"

@implementation CLImageEditorTheme

#pragma mark - singleton pattern

static CLImageEditorTheme *_sharedInstance = nil;

+ (CLImageEditorTheme *)theme {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      _sharedInstance = [[CLImageEditorTheme alloc] init];
    });
    return _sharedInstance;
}

+ (id)allocWithZone:(NSZone *)zone {
    @synchronized(self) {
        if (_sharedInstance == nil) {
            _sharedInstance = [super allocWithZone:zone];
            return _sharedInstance;
        }
    }
    return nil;
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

- (id)init {
    self = [super init];
    if (self) {
        self.bundleName = @"CLImageEditor";
        self.backgroundColor = [UIColor blackColor];
        self.toolbarColor = [UIColor grayColor];
        self.toolIconColor = @"bountye";
        self.toolbarTextColor = [UIColor whiteColor];
        self.toolbarSelectedButtonColor = [UIColor clearColor];
        self.toolbarTextFont = [UIFont systemFontOfSize:10];
        self.mainToolbarTextFont = [UIFont systemFontOfSize:13];
    }
    return self;
}

@end
