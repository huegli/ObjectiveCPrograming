//
//  main.m
//  userinput
//
//  Created by Nikolai Schlegel on 10/3/23.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Who is cool? ");
        NSString *name = [NSString stringWithUTF8String:readline(NULL)];
        NSLog(@"%@ is cool!", name);
    }
    return 0;
}
