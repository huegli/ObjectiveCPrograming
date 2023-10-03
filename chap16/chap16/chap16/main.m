//
//  main.m
//  chap16
//
//  Created by Nikolai Schlegel on 10/3/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *lament = @"Why me!?";
        NSLog(@"lament: %@", lament);
        
        NSString *slogan = @"I \u2661 New York";
        NSLog(@"slogan: %@", slogan);

        NSDate *now = [NSDate date];
        NSString *dateString = [NSString stringWithFormat:@"The date is  %@", now];
        NSLog(@"dateString: %@", dateString);
        
        NSLog(@"dateString length: %lu", [dateString length]);
        NSLog(@"Uppercase lament: %@", [lament uppercaseString]);
    }
    return 0;
}
