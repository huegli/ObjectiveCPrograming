//
//  BNRForeignStockHolding.m
//  stocks
//
//  Created by Nikolai Schlegel on 10/6/23.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float) costInDollars
{
    return [super costInDollars] * [self conversionRate];
}

- (float) valueInDollars
{
    return [super valueInDollars] * [self conversionRate];
}

@end
