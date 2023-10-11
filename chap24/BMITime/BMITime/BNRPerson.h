//
//  BNRPerson.h
//  BMITime
//
//  Created by Nikolai Schlegel on 10/4/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject

// BNRPerson has two properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

//BNRPerson has a method that calculates the Body Mass Index
- (float) bodyMassIndex;

@end

NS_ASSUME_NONNULL_END
