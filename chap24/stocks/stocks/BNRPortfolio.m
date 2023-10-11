//
//  BNRPortfolio.m
//  stocks
//
//  Created by Nikolai Schlegel on 10/8/23.
//

#import "BNRPortfolio.h"
#include <objc/objc.h>
#include <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"

@interface BNRPortfolio ()
{
    NSMutableArray *_holdings;
}

@end

@implementation BNRPortfolio

-(void)setHoldings:(NSArray *)h;
{
    _holdings = [h mutableCopy];
}

- (NSArray *)holdings
{
    return [_holdings copy];
}

- (void)addHolding:(BNRStockHolding *)h
{
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:h];
}

- (void)removeHolding:(unsigned int)i
{
    if (i < [_holdings count]) {
        [_holdings removeObjectAtIndex:i];
    }
    if ([_holdings count] == 0) {
        _holdings = nil;
    }
}

- (float)totalValue
{
    float total = 0;
    for (BNRStockHolding *h in self.holdings) {
        total += [h valueInDollars];
    }
    return total;
}

- (NSArray *)sortHoldings
{
    NSSortDescriptor *voh = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars"
                                 ascending:NO];

    NSMutableArray *sorted = [_holdings mutableCopy];

    [sorted sortUsingDescriptors:@[voh]];

    return sorted;
}

- (NSArray *)topThree
{
    NSRange topThreeRange = NSMakeRange(0, 3);
    
    return [[self sortHoldings] subarrayWithRange:topThreeRange];

}
@end
