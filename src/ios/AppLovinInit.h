//
//  AppLovinInit.h
//

#import <Cordova/CDVPlugin.h>
#import <Foundation/Foundation.h>
#import <AppLovinSDK/AppLovinSDK.h>

@interface AppLovinInit : CDVPlugin

@property (copy)   NSString* callbackId;

- (void) init:(CDVInvokedUrlCommand *)command;
@end
