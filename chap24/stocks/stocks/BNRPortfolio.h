//
//  BNRPortfolio.h
//  stocks
//
//  Created by Nikolai Schlegel on 10/8/23.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

NS_ASSUME_NONNULL_BEGIN

@interface BNRPortfolio : NSObject

@property (nonatomic, copy) NSArray *holdings;
- (void)addHolding:(BNRStockHolding *)h;
- (void)removeHolding:(unsigned int)i;
- (float)totalValue;
- (NSArray *)sortHoldings;
- (NSArray *)topThree;

@end

NS_ASSUME_NONNULL_END
