//
//  main.m
//  BMITime
//
//  Created by Nikolai Schlegel on 10/4/23.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an instance of BNREmployee
        BNREmployee *mikey = [[BNREmployee alloc] init];
        
        // Give the instance variables interesting values using setters
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
//        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        [formatter setTimeStyle:NSDateFormatterNoStyle];
       
        mikey.hireDate = [formatter dateFromString:@"Aug 02, 2010"];
        
        // Log the instances variables using the getters
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        NSDate *date = mikey.hireDate;
        NSLog(@"%@ hired on %@", mikey, date);
        
        // Log some values using custom methods
        float bmi = [mikey bodyMassIndex];
        double years = [mikey yearsOfEmployment];
        NSLog(@"BMI of %.2f, has worked with us for %.2f years", bmi, years);
    }
    return 0;
}
