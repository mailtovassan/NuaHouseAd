//
//  NuaHouseAd.m
//
//
//  Created by NuaTransMedia on 04/03/13.
//  Copyright (c) 2013 NuaTransMedia. All rights reserved.
//

#import <Foundation/Foundation.h>


extern NSString *const ADSTYLE;
extern CGRect*ADSIZE;
extern NSString* const ADWEBURL;

@interface NuaHouseAd : NSObject

@property(nonatomic,retain)UIButton*Adbtn;
@property(nonatomic,retain)NSMutableArray*muadNamelist;
@property(nonatomic,retain)NSMutableArray*muadURLlist;
@property(nonatomic,retain)NSOperationQueue*opQ;
@property(nonatomic,retain)UIImage*btnImage;
-(id)initAd:(CGRect*)adrect:(NSString*)adstyle:(UIViewController*)currentviewcontroller;
-(void)getAddetails;
-(void)getAddetailsjson;
-(void)callitunesurl;

@end
