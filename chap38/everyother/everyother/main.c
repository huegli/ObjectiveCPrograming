//
//  main.c
//  everyother
//
//  Created by Nikolai Schlegel on 10/18/23.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    unsigned long value = 0;
    
    for (int i = 0; i< 32; i++) {
        value = value << 2;
        value = value + 0x1;
    }
    printf("Result: %lu\n", value);
    
    return 0;
}
