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
@end
