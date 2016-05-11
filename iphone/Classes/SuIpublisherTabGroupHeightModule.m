/**
 * UITabGroupHeight
 *
 * Created by Your Name
 * Copyright (c) 2016 Your Company. All rights reserved.
 */

#import "SuIpublisherTabGroupHeightModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "UITabBar+Resize.h"

@implementation SuIpublisherTabGroupHeightModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"b3a663fd-559b-4f85-a6e3-45c5f5308107";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"su.ipublisher.tab.group.height";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];

	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably

	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}


#pragma Public APIs

-(id)tabHeight:(id)args
{
    return NUMINT(GlobalTabHeight);
}

-(id)tabHeight
{
    return NUMINT(GlobalTabHeight);
}

-(void)setTabHeight:(id)args
{
    ENSURE_SINGLE_ARG(args, NSNumber);
    int newHeight = [TiUtils intValue:args def:49];
    GlobalTabHeight = newHeight;	
}

@end
