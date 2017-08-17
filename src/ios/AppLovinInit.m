//
//  AppLovinInit.m
//

#import "AppLovinInit.h"

@implementation AppLovinInit

- (void)init
{

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(finishLaunching:) name:UIApplicationDidFinishLaunchingNotification object:nil];

}

- (void)finishLaunching:(NSNotification *)notification
{
    // Put here the code that should be on the AppDelegate.m
    [ALSdk initializeSdk];
    
}

@end
