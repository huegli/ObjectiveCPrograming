//
//  main.m
//  stocks
//
//  Created by Nikolai Schlegel on 10/4/23.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // create array
        NSMutableArray *stocks = [NSMutableArray array];
        
        // create stocks
        BNRStockHolding *stockA = [[BNRStockHolding alloc] init];
        [stockA setPurchaseSharePrice:2.3];
        [stockA setCurrentSharePrice:4.5];
        [stockA setNumberOfShares:40];
        [stocks addObject:stockA];
        
        BNRStockHolding *stockB = [[BNRStockHolding alloc] init];
        [stockB setPurchaseSharePrice:12.19];
        [stockB setCurrentSharePrice:10.56];
        [stockB setNumberOfShares:90];
        [stocks addObject:stockB];
        
        BNRStockHolding *stockC = [[BNRStockHolding alloc] init];
        [stockC setPurchaseSharePrice:45.10];
        [stockC setCurrentSharePrice:49.51];
        [stockC setNumberOfShares:210];
        [stocks addObject:stockC];
        
        // Output the cost & values
        for (BNRStockHolding *h in stocks) {
            NSLog(@"Cost in Dollars %f", [h costInDollars]);
            NSLog(@"Value in Dollars %f", [h valueInDollars]);
        }
        
        
        
        
    }
    return 0;
}
