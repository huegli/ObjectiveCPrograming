//
//  main.m
//  CallBacks
//
//  Created by Nikolai Schlegel on 10/11/23.
//

#include "BNRLogger.h"
#import <Foundation/Foundation.h>
#include <MacTypes.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRLogger *logger = [[BNRLogger alloc] init];

//        [[NSNotificationCenter defaultCenter]
//         addObserver:logger selector:@selector(zoneChange:) name:NSSystemTimeZoneDidChangeNotification object:nil];
        [[NSNotificationCenter defaultCenter]
         addObserverForName:NSSystemTimeZoneDidChangeNotification
         object:nil queue:nil
         usingBlock:^(NSNotification *note) {
            NSLog(@"The system time zone changed");
        }];
        
        
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];

        NSURLRequest *request = [NSURLRequest requestWithURL:url];

        __unused NSURLConnection *fetchConn = 
            [[NSURLConnection alloc] initWithRequest:request 
                                    delegate:logger
                            startImmediately:YES];

        __unused NSTimer *timer =
          [NSTimer scheduledTimerWithTimeInterval:2.0
                    target: logger
                    selector:@selector(updateLastTime:)
                    userInfo:nil repeats:YES];

        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
