//
//  BNRStockHolding.h
//  stocks
//
//  Created by Nikolai Schlegel on 10/4/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHolding : NSObject

{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float) purchaseSharePrice;
- (void) setPurchaseSharePrice:(float)p;
- (float) currentSharePrice;
- (void) setCurrentSharePrice:(float)c;
- (int) numberOfShares;
- (void) setNumberOfShares:(int)n;

- (float) costInDollars;
- (float) valueInDollars;

@end

NS_ASSUME_NONNULL_END
