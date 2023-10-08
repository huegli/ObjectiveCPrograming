//
//  BNRForeignStockHolding.h
//  stocks
//
//  Created by Nikolai Schlegel on 10/6/23.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRForeignStockHolding : BNRStockHolding

@property (nonatomic) float conversionRate;

@end

NS_ASSUME_NONNULL_END
