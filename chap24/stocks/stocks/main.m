//
//  main.m
//  stocks
//
//  Created by Nikolai Schlegel on 10/4/23.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // create a portfolio
        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
        
        // create stocks
        BNRStockHolding *stockA = [[BNRStockHolding alloc] init];
        [stockA setSymbol:@"A"];
        [stockA setPurchaseSharePrice:2.3];
        [stockA setCurrentSharePrice:4.5];
        [stockA setNumberOfShares:40];
        [portfolio addHolding:stockA];
        
        BNRStockHolding *stockB = [[BNRStockHolding alloc] init];
        [stockB setSymbol:@"B"];
        [stockB setPurchaseSharePrice:12.19];
        [stockB setCurrentSharePrice:10.56];
        [stockB setNumberOfShares:90];
        [portfolio addHolding:stockB];
        
        BNRForeignStockHolding *stockC = [[BNRForeignStockHolding alloc] init];
        [stockC setSymbol:@"C"];
        [stockC setPurchaseSharePrice:45.10];
        [stockC setCurrentSharePrice:49.51];
        [stockC setNumberOfShares:210];
        [stockC setConversionRate:0.94];
        [portfolio addHolding:stockC];
        
        BNRStockHolding *stockD = [[BNRStockHolding alloc] init];
        [stockD setSymbol:@"D"];
        [stockD setPurchaseSharePrice:100.0];
        [stockD setCurrentSharePrice:1.0];
        [stockD setNumberOfShares:100];
        [portfolio addHolding:stockD];
        
        // Output the cost & values
        for (BNRStockHolding *h in portfolio.holdings) {
            NSLog(@"Cost in Dollars %f", [h costInDollars]);
            NSLog(@"Value in Dollars %f", [h valueInDollars]);
        }
        
        // Output the total value
        NSLog(@"Total value of portfolio %f", [portfolio totalValue]);
        
        // Output the top 3
        NSLog(@"Value of the top 3 holdings:");
        NSArray *top3 = [portfolio topThree];
        for (BNRForeignStockHolding *h in top3) {
            NSLog(@"Stock: %@", h);
        }
        
        // Remove first holding
        [portfolio removeHolding:0];
        
        // Output the cost & values
        for (BNRStockHolding *h in portfolio.holdings) {
            NSLog(@"Cost in Dollars %f", [h costInDollars]);
            NSLog(@"Value in Dollars %f", [h valueInDollars]);
        }
        
        // Output the total value
        NSLog(@"Total value of portfolio %f", [portfolio totalValue]);
    
        // Output the top 3
        NSLog(@"Value of the top 3 holdings (after removing the 1st holding):");
        top3 = [portfolio topThree];
        for (BNRForeignStockHolding *h in top3) {
            NSLog(@"Stock: %@", h);
        }
        
    }
    return 0;
}
