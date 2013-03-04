//
//  NuaHouseAd.m
//  
//
//  Created by NuaTransMedia on 04/03/13.
//  Copyright (c) 2013 NuaTransMedia. All rights reserved.
//

#import "NuaHouseAd.h"
#define adserverlink "http://50.62.73.160/ingageapp_prod/celebrities/"


@implementation NuaHouseAd
@synthesize Adbtn,muadNamelist,muadURLlist,opQ;

// Init AdBTN

-(id)initAd:(CGRect*)adrect:(NSString*)adstyle:(UIViewController*)currentviewcontroller;
{
    
    
    [self getAddetailsjson];
    
   Adbtn = [UIButton buttonWithType:UIButtonTypeCustom];
   [Adbtn addTarget:self action:@selector(callitunesurl) forControlEvents:UIControlEventTouchUpInside];
    
   UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://i.stack.imgur.com/fKDkr.png"]]];
    Adbtn.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    
    [Adbtn setBackgroundImage:image forState:UIControlStateNormal];
    
    [currentviewcontroller.view addSubview:Adbtn];
    
 
    return self;
}
-(void)getAddetails
{
  
    opQ = [NSOperationQueue new];
    NSInvocationOperation *operation = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(loadDataWithOperation)
                                                                              object:nil];
    [opQ addOperation:operation];
    [operation release];
}
-(void)getAddetailsjson
{
   
  
    
    NSString *url=@"http://50.62.73.160/ingageapp_testing/php/test.php";
    NSURLRequest *theRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    
    NSURLResponse *resp = nil;
    NSError *err = nil;
    
    NSData *response = [NSURLConnection sendSynchronousRequest: theRequest returningResponse: &resp error: &err];
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData: response options: NSJSONReadingMutableContainers error: &err];
    
    if (!jsonArray)
    {
        NSLog(@"Error parsing JSON: %@", err);
    }
    else
    {
        for(NSDictionary *item in jsonArray)
        {
            muadNamelist=[item objectForKey:@"cataName"];
            muadNamelist=[item objectForKey:@"cataID"];
        }
    }
    
    NSLog(@"####  Finished  ####");
}
-(void)showBtnImage
{
    
}
-(void)callitunesurl
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"url"]];
}
@end
