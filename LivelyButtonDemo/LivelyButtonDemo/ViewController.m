//
//  ViewController.m
//  LivelyButtonDemo
//
//  Created by 杨启晖 on 14/12/8.
//  Copyright (c) 2014年 telcolor. All rights reserved.
//

#import "ViewController.h"
#import "RYLivelyButton.h"
#import "Masonry.h"
#import "POP.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //  添加button
    [self addButton];
}
- (void)addButton{
    RYLivelyButton *button = [RYLivelyButton button];
    
    [button setStyle:kFRDLivelyButtonStyleCaretUp animated:YES];
    
    [button setOptions:@{
                        kFRDLivelyButtonColor: [UIColor blackColor],
                        kFRDLivelyButtonHighlightedColor: [UIColor lightGrayColor],
                        kFRDLivelyButtonHighlightAnimationDuration: @(0.1),
                        kFRDLivelyButtonHighlightScale: @(0.9),
                        kFRDLivelyButtonLineWidth: @(5.0),
                        kFRDLivelyButtonUnHighlightAnimationDuration: @(0.15),
                        kFRDLivelyButtonStyleChangeAnimationDuration: @(0.3)
                        }];
    
    [button addTarget:self action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
    }];
}
- (void)tapButton:(RYLivelyButton*)sender{
    if (sender.buttonStyle == kFRDLivelyButtonStyleCaretUp) {
        [sender setStyle:kFRDLivelyButtonStyleCaretDown animated:YES];
    }else{
        [sender setStyle:kFRDLivelyButtonStyleCaretUp animated:YES];
    }
}
@end
