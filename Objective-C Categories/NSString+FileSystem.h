#import <Foundation/Foundation.h>

@interface NSString (FileSystem)

- (NSString *)documentFilePath;
- (NSString *)temporaryFilePath;

@end
