//
//  PushEnabled.m
//

#import "PushEnabled.h"

@implementation PushEnabled

@synthesize callbackId;

- (void) checkStatus:(CDVInvokedUrlCommand *)command {

    // Check for status

    CDVPluginResult* result = nil;

    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0){
        if ([[UIApplication sharedApplication] respondsToSelector:@selector(isRegisteredForRemoteNotifications)])
        {

            if ([[UIApplication sharedApplication] isRegisteredForRemoteNotifications]) {
                NSLog(@"Push notifications enabled");
                result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Push enabled"];
                [self invokeCallback:command withResult:result];
            }
            else {
                NSLog(@"Push notifications disabled");
                result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Push disabled"];
                [self invokeCallback:command withResult:result];
            }
        }else{

        }
    }else{
        UIRemoteNotificationType types = [[UIApplication sharedApplication] enabledRemoteNotificationTypes];
        if (types & UIRemoteNotificationTypeAlert)
        {
            NSLog(@"Push notifications enabled");
            result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Push enabled"];
            [self invokeCallback:command withResult:result];
        }else{

        }
    }

}

- (void) invokeCallback:(CDVInvokedUrlCommand *)command withResult:(CDVPluginResult *)result {
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
