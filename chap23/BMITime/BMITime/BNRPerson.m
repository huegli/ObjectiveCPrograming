//
//  BNRPerson.m
//  BMITime
//
//  Created by Nikolai Schlegel on 10/4/23.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
