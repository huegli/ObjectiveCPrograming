//
//  BNRAsset.h
//  BMITime
//
//  Created by Nikolai Schlegel on 10/7/23.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic, weak) BNREmployee *holder;
@property (nonatomic) unsigned int resaleValue;

@end

NS_ASSUME_NONNULL_END
