//
//  main.c
//  gradeInTheShade
//
//  Created by Nikolai Schlegel on 10/20/23.
//

#include <stdio.h>
#include <stdlib.h>

float averageFloat(float data[], int dataCount)
{
    float sum = 0.0;
    for (int i = 0; i < dataCount; i++)
    {
        sum = sum + data[i];
    }
    return sum / dataCount;
}

int main(int argc, const char * argv[]) {
    // Create an array of floats
//    float *gradeBook = malloc(3 * sizeof(float));
    float gradeBook[] = {60.2, 94.5, 81.1};
    
//    gradeBook[0] = 60.2;
//    gradeBook[1] = 94.5;
//    gradeBook[2] = 81.1;
    
    // Calculate the average
    float average = averageFloat(gradeBook, 3);
    
    // Free the array
//    free(gradeBook);
//    gradeBook = NULL;
    
    printf("Average = %.2f\n", average);
    
    return 0;
}
