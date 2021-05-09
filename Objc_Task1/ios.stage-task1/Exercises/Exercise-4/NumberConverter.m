#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSString *strValue = [number stringValue];
       NSString *emptyString = @"";
       
       if ([strValue hasPrefix:@"-"]) {
           
           emptyString = [strValue substringFromIndex:1];
           return [self converterString:emptyString];
           
       } else {
           
           emptyString = strValue;
           return [self converterString:emptyString];
       }
       
       return  nil;
   }

   - (NSArray *) converterString: (NSString *)string  {
       
       NSMutableArray* resultArray = [NSMutableArray new];
       NSString *reversString = @"";
       
       for (int i = 0; i < string.length; i++) {
           reversString = [NSMutableString stringWithFormat:@"%c%@", [string characterAtIndex:i], reversString];
       }
       
       NSInteger lengthOfReversedString = [reversString length];
       unichar concreteCharacter[lengthOfReversedString + 1];
       
       [reversString getCharacters:concreteCharacter
                       range: NSMakeRange(0, lengthOfReversedString)];
       
       for (int i = 0; i < lengthOfReversedString; i++) {
           [resultArray addObject: [NSString stringWithFormat:@"%C", concreteCharacter[i]]];
       }
       
       return resultArray;
   }

@end
