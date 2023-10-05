//
//  main.m
//  BMITime
//
//  Created by Nikolai Schlegel on 10/4/23.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an instance of BNRPerson
        BNRPerson *mikey = [[BNRPerson alloc] init];
        
        // Give the instance variables interesting values using setters
        [mikey setWeightInKilos:96];
        [mikey setHeightInMeters:1.8];
        
        // Log the instances variables using the getters
        float height = [mikey heightInMeters];
        int weight = [mikey weightInKilos];
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        
        // Log some values using custom methods
        float bmi = [mikey bodyMassIndex];
        NSLog(@"mikey has a BMI of %f", bmi);
    }
    return 0;
}
