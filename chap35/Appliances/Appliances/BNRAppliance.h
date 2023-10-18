//
//  BNRAppliance.h
//  Appliances
//
//  Created by Nikolai Schlegel on 10/17/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRAppliance : NSObject
{
    NSString *_productName;
}
@property (nonatomic) int voltage;
//@property (nonatomic, copy) NSString *productName;

// The designated initializer
- (instancetype)initWithProductName:(NSString *)pn;

@end

NS_ASSUME_NONNULL_END
