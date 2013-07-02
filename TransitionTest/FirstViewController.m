//
//  FirstViewController.m
//  TransitionTest
//
//  Created by yaozhuoyu on 13-6-27.
//  Copyright (c) 2013年 yaozhuoyu. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"first";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIExtendedEdgeNone;
	
    UIButton *imageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    imageBtn.frame = IMAGEFIRSTFRAME;
    
    UIImage *image = [UIImage imageNamed:@"switch_place_bg"];
    [imageBtn setBackgroundImage:image forState:UIControlStateNormal];
    [imageBtn setBackgroundImage:image forState:UIControlStateHighlighted];
    
    [self.view addSubview:imageBtn];
    [imageBtn addTarget:self action:@selector(tipImageBtn) forControlEvents:UIControlEventTouchUpInside];
    self.imageBtn = imageBtn;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tipImageBtn{
    SecondViewController *secondCon = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondCon animated:YES];
}

@end
