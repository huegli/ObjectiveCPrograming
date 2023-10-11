//
//  main.m
//  Stringz
//
//  Created by Nikolai Schlegel on 10/11/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        
        // Declare a pointer to an NSError object, but do not instantiate it
        // The NSError instance will only be created if there is, in fact, an error.
        NSError *error;
        
        // Pass the NSError pointer by reference to the NSString method
        BOOL success = [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];\
        
        // Test the returned BOOL, and query the NSError if the write failed
        if (success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
        
        // Reading
        NSString *inStr = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"
                                  encoding:NSASCIIStringEncoding error:&error];
        
        if (!inStr) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"resolv.conf looks like this: %@", inStr);
        }
                           
    }
    return 0;
}
