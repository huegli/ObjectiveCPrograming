//
//  NSDate+BNRDateConvenience.h
//  DateMonger
//
//  Created by Nikolai Schlegel on 10/18/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (BNRDateConvenience)

+ (NSDate *)bnr_newDateYear:(int)year withMonth:(int)month withDay:(int)day;


@end

NS_ASSUME_NONNULL_END
