//
//  main.m
//  grocery
//
//  Created by Nikolai Schlegel on 10/4/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create the mutable array
        NSMutableArray *groceryList = [NSMutableArray array];
        
        // Add items
        [groceryList addObject:@"Loaf of bread"];
        [groceryList addObject:@"Container of milk"];
        [groceryList insertObject:@"Stick of butter" atIndex:2];
        
        // Print out the list
        NSLog(@"My grocery list is: ");
        for (NSString *s in groceryList) {
            NSLog(@"%@", s);
        }
        
        
        
    }
    return 0;
}
