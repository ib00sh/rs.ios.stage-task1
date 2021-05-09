#import "NSString+ValidNumber.h"


@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    if (self.length == 0) {
            return false;
        } else {
            NSRegularExpression *reg = [NSRegularExpression regularExpressionWithPattern:@"[0-9]" options:0 error:nil];
            NSInteger result = [reg numberOfMatchesInString:self options:0 range:NSMakeRange(0, self.length)];
            
            if (result == self.length) {
                return true;
            } else {
                return false;
            }
        
        }
}

@end
