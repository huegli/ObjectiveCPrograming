//
//  main.m
//  chap15
//
//  Created by Nikolai Schlegel on 10/3/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
       
        NSDate *startTime = currentTime;
        
        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is now %p", currentTime);
        NSLog(@"The address of the original object is %p", startTime);
        
        currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime);
    }
    return 0;
}
