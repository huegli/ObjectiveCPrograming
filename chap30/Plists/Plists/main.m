//
//  main.m
//  Plists
//
//  Created by Nikolai Schlegel on 10/13/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        
        [dict setObject:[NSNumber numberWithInt:42] forKey:@"Integer"];
        [dict setObject:[NSNumber numberWithFloat:3.14159] forKey:@"Float"];
        [dict setObject:[NSNumber numberWithBool:YES] forKey:@"Bool"];
        
        NSArray *theArray = [NSArray arrayWithObjects: [NSNumber numberWithInt:41], [NSNumber numberWithInt:42], [NSNumber numberWithInt:43], nil];
        
        [dict setObject:theArray forKey:@"Array"];
        
        NSData *theData = [[NSData alloc] initWithContentsOfFile:@"/tmp/google.png"];
        
        [dict setObject:theData forKey:@"Data"];
        
        [dict writeToFile:@"/tmp/full.plist" atomically:YES];
        
    }
    return 0;
}
