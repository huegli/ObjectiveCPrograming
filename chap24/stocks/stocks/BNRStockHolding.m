//
//  BNRStockHolding.m
//  stocks
//
//  Created by Nikolai Schlegel on 10/4/23.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float) costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float) valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Stock %@: current Value: $%f >", self.symbol, self.valueInDollars];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
