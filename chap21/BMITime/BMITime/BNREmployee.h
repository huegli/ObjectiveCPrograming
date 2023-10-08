//
//  BNREmployee.h
//  BMITime
//
//  Created by Nikolai Schlegel on 10/5/23.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

NS_ASSUME_NONNULL_BEGIN

@class BNRAsset;

@interface BNREmployee : BNRPerson
{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;
- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (void)removeAsset:(unsigned int)i;
- (unsigned int)valueOfAssets;


@end

NS_ASSUME_NONNULL_END
