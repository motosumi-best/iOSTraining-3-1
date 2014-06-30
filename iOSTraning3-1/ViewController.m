//
//  ViewController.m
//  iOSTraning3-1
//
//  Created by 金子 修一郎 on 14/06/30.
//  Copyright (c) 2014年 金子 修一郎. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:scrollView];
    
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *image = [UIImage imageNamed:@"1.JPG"];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, image.size.width, image.size.height)];
    imageView.image = image;
    
    [scrollView addSubview:imageView];
    
    scrollView.contentSize = imageView.frame.size;
    scrollView.maximumZoomScale = 3.0;
    scrollView.minimumZoomScale = 0.5;
    
    scrollView.delegate = self;
    
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    for (UIView *view in scrollView.subviews) {
        if ([view isKindOfClass:[UIImageView class]]) {
            return view;
        }
    }
    return nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
