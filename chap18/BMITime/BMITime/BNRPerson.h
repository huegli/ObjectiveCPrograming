//
//  BNRPerson.h
//  BMITime
//
//  Created by Nikolai Schlegel on 10/4/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject

{
    // BNRPerson has two instance variables
    float _heightInMeters;
    int _weightInKilos;
}

// BNRPerson has methods to read and set its instance variables
- (float) heightInMeters;
- (void) setHeightInMeters:(float)h;
- (int) weightInKilos;
- (void) setWeightInKilos:(int)w;

//BNRPerson has a method that calculates the Body Mass Index
- (float) bodyMassIndex;

@end

NS_ASSUME_NONNULL_END
