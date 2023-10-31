//
//  main.c
//  Affirmation
//
//  Created by Nikolai Schlegel on 10/30/23.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    
    int count = atoi(argv[2]);
    
    for (int j = 0; j < count; j++) {
        printf("You are %s!\n", argv[1]);
    }
    return 0;
}
