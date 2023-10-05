//
//  main.m
//  names
//
//  Created by Nikolai Schlegel on 10/4/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Read in propernames as a huge string (ignoring the possibility of an error)
        NSString *nameString =
                    [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                              encoding:NSUTF8StringEncoding
                                                 error:NULL];

        // Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];

        // Read in words as a huge string (ignoring the possibility of an error)
        NSString *wordsString =
                    [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                              encoding:NSUTF8StringEncoding
                                                 error:NULL];

        // Break it into an array of strings
        NSArray *words = [wordsString componentsSeparatedByString:@"\n"];

        // Go through the array one string at a time
        for (NSString *w in words) {
            
            for (NSString *n in names) {
                
                // Are the two words the same?
                if ([w caseInsensitiveCompare:n] == NSOrderedSame) {
                    NSLog(@"%@", n);
                }
            }
        }

    }
    return 0;
}
