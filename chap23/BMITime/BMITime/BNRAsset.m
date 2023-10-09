//
//  BNRAsset.m
//  BMITime
//
//  Created by Nikolai Schlegel on 10/7/23.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
    // is holder non-nil?
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@",
            self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"%@: $%d unassigned",
            self.label, self.resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
