#import "FetchAPInfo.h"
#import <SystemConfiguration/CaptiveNetwork.h>

@implementation FetchAPInfo

// fetch SSID Information
// https://developer.apple.com/library/ios/documentation/SystemConfiguration/Reference/CaptiveNetworkRef/Reference/reference.html

+ (void)fetchAPInfo
{
    NSArray *ifs = (__bridge_transfer id)CNCopySupportedInterfaces();
    id info = nil;
    for (NSString *ifnam in ifs) {
        info = (__bridge_transfer id)CNCopyCurrentNetworkInfo((__bridge CFStringRef)ifnam);
        if ([info isKindOfClass:[NSDictionary class]]) {
            // AP Info
        }
        
        if (info && [info count]) { break; }
    }
}

@end
