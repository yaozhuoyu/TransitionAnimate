//
//  SecondViewController.m
//  TransitionTest
//
//  Created by yaozhuoyu on 13-6-27.
//  Copyright (c) 2013年 yaozhuoyu. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"second";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.edgesForExtendedLayout = UIExtendedEdgeNone;
	
    UIButton *imageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    imageBtn.frame = IMAGESECONDFRAME;
    
    UIImage *image = [UIImage imageNamed:@"switch_place_bg"];
    [imageBtn setBackgroundImage:image forState:UIControlStateNormal];
    [imageBtn setBackgroundImage:image forState:UIControlStateHighlighted];
    
    [self.view addSubview:imageBtn];
    self.imageBtn = imageBtn;
    [imageBtn addTarget:self action:@selector(tipImageBtn) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tipImageBtn{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
