//
//  EXViewController.m
//  ThemeManager
//
//  Created by Andrew Berry on 1/15/14.
//  Copyright (c) 2014 Andrew Berry. All rights reserved.
//

#import "EXViewController.h"

#import "MMThemeManager.h"

@interface EXViewController ()

@end

@implementation EXViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // Apply theme
    [self applyActiveTheme];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Theme

- (void)applyActiveTheme {
    [[[MMThemeManager sharedManager] theme] themeViewController:self];
}

@end
