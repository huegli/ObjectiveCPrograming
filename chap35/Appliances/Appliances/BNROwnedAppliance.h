//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by Nikolai Schlegel on 10/17/23.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNROwnedAppliance : BNRAppliance

@property (readonly) NSMutableSet *ownerNames;

// The designated initializer
- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n;
- (void)addOwnerName:(NSString *)n;
- (void)removeOwnerName:(NSString *)n;

@end

NS_ASSUME_NONNULL_END
