//
//  main.m
//  Appliances
//
//  Created by Nikolai Schlegel on 10/17/23.
//

#import <Foundation/Foundation.h>
#import "BNROwnedAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNROwnedAppliance *a = [[BNROwnedAppliance alloc] init];
        NSLog(@"a is %@", a);
        [a setProductName:@"Washing Machine"];
        [a setVoltage:240];
        [a addOwnerName:@"Nikolai"];
        NSLog(@"a is %@", a);
    }
    return 0;
}
