//
//  BNRStockHolding.h
//  stocks
//
//  Created by Nikolai Schlegel on 10/4/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHolding : NSObject

@property (nonatomic) NSString *symbol;
@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;

- (float) costInDollars;
- (float) valueInDollars;

@end

NS_ASSUME_NONNULL_END
