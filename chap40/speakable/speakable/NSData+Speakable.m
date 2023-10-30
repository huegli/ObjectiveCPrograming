//
//  Speakable.m
//  speakable
//
//  Created by Nikolai Schlegel on 10/20/23.
//

#import "NSData+Speakable.h"

@implementation NSData (Speakable)

NSArray *brandNames = @[
    @"Camry",
    @"Nikon",
    @"Apple",
    @"Ford",
    @"Audi",
    @"Google",
    @"Nike",
    @"Amazon",
    @"Honda",
    @"Mazda",
    @"Buick",
    @"Fiat",
    @"Jeep",
    @"Lexus",
    @"Volvo",
    @"Fuji",
    @"Sony",
    @"Delta",
    @"Focus",
    @"Puma",
    @"Samsung",
    @"Tivo",
    @"Halo",
    @"Sting",
    @"Shrek",
    @"Avatar",
    @"Shell",
    @"Visa",
    @"Vogue",
    @"Twitter",
    @"Lego",
    @"Pepsi"
];

- (NSString *)encodeAsSpeakableString
{
  
    NSMutableString *outString = [[NSMutableString alloc] init];
    
    unsigned char bytearray[8];
    
    [self getBytes:bytearray length:8];
    
    for (int i = 0; i < 8; i++) {
        
        unsigned int upperThree = bytearray[i] >> 5;
        unsigned int lowerFive = bytearray[i] & 0x1f;
        
//        NSLog(@"Byte: 0x%x first 3: 0x%x lower 5: 0x%x\n", bytearray[i], upperThree, lowerFive);
        
        [outString appendString:[NSString stringWithFormat:@"%d %@ ", upperThree, brandNames[lowerFive]]];
        
//        NSLog(@"String: %@", outString);
        
        
    }
    

    return outString;
}

+ (NSData *)dataWithSpeakableString:(NSString *)s error:(NSError *__autoreleasing  _Nullable *)e
{
    // Create int64_t for result
    uint64_t result = 0;
    
    // Get the digit character set
    NSCharacterSet *digits = [NSCharacterSet decimalDigitCharacterSet];
    
    // Initialize search range for first digit
    NSRange searchRange;
    searchRange.length = 1;
    searchRange.location = 0;
    
    // indicate we have found a brand name
    bool foundBrandName = NO;
    
    for (int i = 0; i < 8; i++) {
        
        // Find the location of the first digit in the string
        NSRange digitRange = [s rangeOfCharacterFromSet:digits options:NSLiteralSearch range:searchRange];
        
        if (digitRange.length == 0) {
            // Set nserror and return
            if (e) {
                NSDictionary *userInfo = @{NSLocalizedDescriptionKey : @"Unable to parse"};
                *e = [NSError errorWithDomain:@"SpeakableBytes" code:1 userInfo:userInfo];
            }
            return NULL;
        }
        
        // upper three bits are formed from a char '0' - '9'
        uint8_t byte = (uint8_t)([s characterAtIndex:digitRange.location] - '0') << 5;
        
        // update location to account for found digit + one space
        searchRange.location = digitRange.location + 2;
        
        for (NSString *brand in brandNames) {
            
            // this makes sure we only search s for the range it takes for the
            // current brand name
            searchRange.length = [brand length];
            
            // this ensures that we don't search past the end of the string s
            if (searchRange.location + searchRange.length < [s length]) {
                NSRange brandRange = [s rangeOfString:brand options:NSLiteralSearch range:searchRange];
                
                
                if (brandRange.length > 0) {
                    // Found it, adjust to new search range location
                    // and break out of brand for loop
                    searchRange.location = searchRange.location + brandRange.length + 1;
                    searchRange.length = 1;
                    foundBrandName = YES;
                    result = result | (uint64_t)byte << (i * 8);
                    break;
                }
            }
            // increment byte to keep track of the index
            // of the brand - will throw away byte if not found
            byte++;
            
        }
        // No brandname found
        if (!foundBrandName) {
            // Set nserror and return
            if (e) {
                NSDictionary *userInfo = @{NSLocalizedDescriptionKey : @"Unable to parse"};
                *e = [NSError errorWithDomain:@"SpeakableBytes" code:1 userInfo:userInfo];
            }
            return NULL;
        }
    }
   
    // Pack result in an NSData and return it
    return [NSData dataWithBytes:&result length:sizeof(uint64_t)];
}

@end
