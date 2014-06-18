/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "YyLogcatcherModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"


YyLogcatcherModule* sharedLogger;

@implementation YyLogcatcherModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"802968fa-9b2a-4df1-b324-1cea1dd209c8";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"yy.logcatcher";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
    sharedLogger = self;
	
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

+ (YyLogcatcherModule*)logger
{
	return sharedLogger;
}

@end
