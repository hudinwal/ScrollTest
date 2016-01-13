//
//  PageViewController.m
//  ScrollTest
//
//  Created by Dinesh Kumar on 12/01/16.
//  Copyright © 2016 Dinesh Kumar. All rights reserved.
//

#import "PageViewController.h"
#import "ViewController.h"

@interface PageViewController () <UIPageViewControllerDelegate,UIPageViewControllerDataSource, UIGestureRecognizerDelegate>

@end

@implementation PageViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [self setDataSource:self];
    [self setDelegate:self];
    [self setViewControllers:@[[self freshViewController]] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:NULL];
}

//-----------------------------------------------------------------//
#pragma mark Page View Controller Data Source
//-----------------------------------------------------------------//

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    return [self freshViewController];
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    return [self freshViewController];
}

-(ViewController *)freshViewController {
    UIStoryboard * mainSortyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [mainSortyboard instantiateViewControllerWithIdentifier:@"viewController"];
}

//-----------------------------------------------------------------//
#pragma mark Gestuer delegates
//-----------------------------------------------------------------//

-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

@end
