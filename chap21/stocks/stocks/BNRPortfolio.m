//
//  BNRPortfolio.m
//  stocks
//
//  Created by Nikolai Schlegel on 10/8/23.
//

#import "BNRPortfolio.h"
#import "BNRForeignStockHolding.h"

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

- (float)totalValue
{
    float total = 0;
    for (BNRStockHolding *h in self.holdings) {
        total += [h valueInDollars];
    }
    return total;
}
@end
