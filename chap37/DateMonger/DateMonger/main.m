//
//  main.m
//  DateMonger
//
//  Created by Nikolai Schlegel on 10/18/23.
//

#import <Foundation/Foundation.h>
#import "NSDate+BNRDateConvenience.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *date = [NSDate bnr_newDateYear:2023
                                     withMonth:9
                                       withDay:30];
        NSLog(@"Date: %@", date);
    }
    return 0;
}
