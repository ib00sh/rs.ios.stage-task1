//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers
NSInteger count = 0;
NSInteger object = 0;
- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    for ( int i = 0; i < [array count]; i++ )
        {
            object = [[array objectAtIndex:i]integerValue];
            if ( object % 2 != 0 ) {
                count++;
            }
        }
    return count;
}

@end
