#import "NSString+FileSystem.h"

@implementation NSString (FileSystem)

- (NSString *)documentFilePath {
    NSString *documentsDirectory = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                         NSUserDomainMask, YES)[0];
    return [documentsDirectory stringByAppendingPathComponent:self];
}

- (NSString *)temporaryFilePath {
    return [NSTemporaryDirectory() stringByAppendingPathComponent:self];
}

@end
