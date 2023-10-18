//
//  BNRAppliance.m
//  Appliances
//
//  Created by Nikolai Schlegel on 10/17/23.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype)init
{
    return [self initWithProductName:@"Unknown"];
}

- (instancetype)initWithProductName:(NSString *)pn
{
    // Did it return something non-nil?
    if (self = [super init]) {
        
        // set the product name
        _productName = [pn copy];
        
        // Give voltage a starting value
        _voltage = 120;
    }
    
    // Return a pointer to the new object
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}

@end
