//
//  main.m
//  alive
//
//  Created by Nikolai Schlegel on 10/2/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDateComponents* birthday = [[NSDateComponents alloc] init];
        NSDate* today = [[NSDate alloc] init];
        
        [birthday setYear:1970];
        [birthday setMonth:8];
        [birthday setDay:30];
        [birthday setHour:9];
        [birthday setMinute:0];
        [birthday setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate* dateOfBirth = [g dateFromComponents:birthday];
        
        double secondsSinceBirth = [today timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"It has been %f seconds since I was born", secondsSinceBirth);
    }
    return 0;
}
