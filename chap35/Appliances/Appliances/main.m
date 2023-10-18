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
        [a setValue:@"Washing Machine" forKey:@"productName"];
        [a setValue:[NSNumber numberWithInt:240] forKey:@"voltage"];
        [a addOwnerName:@"Nikolai"];
        NSLog(@"a is %@", a);
        
        NSLog(@"The product name is %@", [a valueForKey:@"productName"]);
        
    }
    return 0;
}
