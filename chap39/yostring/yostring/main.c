//
//  main.c
//  yostring
//
//  Created by Nikolai Schlegel on 10/19/23.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, const char * argv[]) {
    char x = '!'; // the character '!'
    
    while (x <= '~') {  // the character '~'
        printf("%x is %c\n", x, x);
        x++;
    }

    const char *start = "A backslash after two newlines and a tab:\n\n\t\\";
//    start[2] = 'z';
    
//    // Get a point to 5 byets of memory on the heap
//    char *start = malloc(5);
//    
//    // Put 'L' in the first byte
//    *start = 'L';
//    
//    // Put 'o' in the second byte
//    *(start + 1) = 'o';
//
//    // Put 'v' in the third byte
//    *(start + 2) = 'v';
//
//    // Put 'e' in the fourth byte
//    *(start + 3) = 'e';
//
//    // Put zero in the fifth byte
//    *(start + 4) = '\0';
//
//    start[0] = 'L';
//    start[1] = 'o';
//    start[2] = 'v';
//    start[3] = 'e';
//    start[4] = '\0';
//    
    // Print out the string and its length
    printf("%s has %zu characters\n", start, strlen(start));
    
    // Print out the third letter
    printf("The third letter is %c\n", *(start + 2));
    
//    // Free the memory so that it can be reused
//    free(start);
//    start = NULL;

    return 0;
}
