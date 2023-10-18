//
//  NSDate+BNRDateConvenience.m
//  DateMonger
//
//  Created by Nikolai Schlegel on 10/18/23.
//

#import "NSDate+BNRDateConvenience.h"

@implementation NSDate (BNRDateConvenience)

+ (NSDate *)bnr_newDateYear:(int)year withMonth:(int)month withDay:(int)day
{
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.day = day;
    dateComponents.month = month;
    dateComponents.year = year;
    dateComponents.hour = 0;
    dateComponents.minute = 0;
    dateComponents.second = 0;
    NSDate *date = [cal dateFromComponents:dateComponents];
    return date;
}

@end
