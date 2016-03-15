//
//  PushEnabled.h
//

#import <Cordova/CDVPlugin.h>
#import <Foundation/Foundation.h>

@interface PushEnabled : CDVPlugin

@property (copy)   NSString* callbackId;

- (void) checkStatus:(CDVInvokedUrlCommand *)command;
@end
