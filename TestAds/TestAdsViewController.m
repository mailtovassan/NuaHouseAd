//
//  TestAdsViewController.m
//  TestAds
//
//  Created by Ingage on 04/03/13.
//  Copyright (c) 2013 MyInGage. All rights reserved.
//

#import "TestAdsViewController.h"

@interface TestAdsViewController ()

@end
#import "NuaHouseAd.h"
@implementation TestAdsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NuaHouseAd*nha=[[NuaHouseAd alloc] initAd:(0,0,100,100) :@"1" :self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
