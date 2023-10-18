//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by Nikolai Schlegel on 10/17/23.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance ()
{
    NSMutableSet *_ownerNames;
}
@end

@implementation BNROwnedAppliance

- (instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n
{
    // Call the superclass's initializer
    if (self = [super initWithProductName:pn]) {
        
        // Create a set to hold owners names
        _ownerNames = [[NSMutableSet alloc] init];
        
        // Is the first owner name non-nil?
        if (n) {
            [_ownerNames addObject:n];
        }
    }
    
    // Return a pointer to the new object
    return self;
}

- (instancetype)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}

- (void)addOwnerName:(NSString *)n
{
    [_ownerNames addObject:n];
}

- (void)removeOwnerName:(NSString *)n
{
    [_ownerNames removeObject:n];
}

- (NSSet *)ownerNames
{
    return [_ownerNames copy];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>\nowners: %@", self.productName, self.voltage, self.ownerNames];
}

@end
