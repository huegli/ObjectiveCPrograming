//
//  main.c
//  spaceCount
//
//  Created by Nikolai Schlegel on 10/19/23.
//

#include <stdio.h>

int spaceCount(const char *sentence)
{
    int count = 0;
    int index = 0;
    
    while (sentence[index] != '\0') {
        if (sentence[index] == ' ') {
            count++;
        }
        index++;
    }
    return count;
}

int main (int argc, const char * argv[])
{

    const char *sentence = "He was not in the cab at the time.";
    printf("\"%s\" has %d spaces\n", sentence, spaceCount(sentence));

    return 0;
}
