//
//  TiExceptionHandler+EventLogging.m
//  TiIOSLog
//
//  Created by David Bankier on 17/06/2014.
//
//

#import "TiExceptionHandler+EventLogging.h"
#import "TiApp.h"
#import "TiAppiOSProxy.h"
#import "YyLogcatcherModule.h"

@implementation TiExceptionHandler (EventLogging)

- (void)reportScriptError:(TiScriptError *)scriptError
{
    NSLog(@"[ERROR] Script Error: %@",[scriptError detailedDescription]);
    [[YyLogcatcherModule logger] fireEvent:@"error" withObject: [scriptError dictionaryValue]];
}

@end
