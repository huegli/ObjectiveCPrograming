//
//  main.m
//  VowelMovement
//
//  Created by Nikolai Schlegel on 10/12/23.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create array of strings and a container for devoweling
        NSArray *originalStrings = @[@"Sauerkraut", @"Paygun", @"Big Nerd Ranch", @"Mississippi"];
        NSLog(@"original strings: %@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        // Create a list of characters to be removed from the string
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        // Declare the block variable
//        ArrayEnumerationBlock devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
//            
//            NSRange yRange = [string rangeOfString:@"y"
//                                           options:NSCaseInsensitiveSearch];
//            
//            // Did I find a y?
//            if (yRange.location != NSNotFound) {
//                *stop = YES; // Prevent further iterations
//                return;      // End this iteration
//            }
//            NSMutableString *newString = [NSMutableString stringWithString:string];
//            
//            // Iterate over the array of vowels, replacing occurances
//            // with an empty string
//            for (NSString *s in vowels) {
//                NSRange fullRange = NSMakeRange(0, [newString length]);
//                [newString replaceOccurrencesOfString:s
//                                           withString:@""
//                                              options:NSCaseInsensitiveSearch
//                                                range:fullRange];
//            }
//            
//            [devowelizedStrings addObject:newString];
//            
//        }; // End of block assignment
        
        // Iterate over the array with your block
        [originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop) {
            
            NSRange yRange = [string rangeOfString:@"y"
                                           options:NSCaseInsensitiveSearch];
            
            // Did I find a y?
            if (yRange.location != NSNotFound) {
                *stop = YES; // Prevent further iterations
                return;      // End this iteration
            }
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over the array of vowels, replacing occurances
            // with an empty string
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
            
        }];
        NSLog(@"devowelized strings: %@", devowelizedStrings);
    }
    return 0;
}
