 #import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
    @autoreleasepool {
        NSHost *host = [NSHost currentHost];
        NSString *name = [host localizedName];
        NSLog(@"The computer name is %@", name);
    }
    return 0;
}
