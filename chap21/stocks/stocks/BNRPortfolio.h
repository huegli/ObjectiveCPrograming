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
{
    NSMutableArray *_holdings;
}

@property (nonatomic, copy) NSArray *holdings;
- (void)addHolding:(BNRStockHolding *)h;
- (float)totalValue;

@end

NS_ASSUME_NONNULL_END
