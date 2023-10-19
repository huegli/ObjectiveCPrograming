//
//  main.c
//  bitwize
//
//  Created by Nikolai Schlegel on 10/18/23.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    unsigned char a = 0x3c;
    unsigned char b = 0xa9;
    unsigned char c = a | b;
    
    printf("Hex: %x | %x = %x\n", a, b, c);
    printf("Decimal: %d | %d = %d\n", a, b, c);
    
    unsigned char d = a & b;
    
    printf("Hex: %x & %x = %x\n", a, b, d);
    printf("Decimal: %d & %d = %d\n", a, b, d);
    
    unsigned char e = a ^ b;
    
    printf("Hex: %x ^ %x = %x\n", a, b, e);
    printf("Decimal: %d ^ %d = %d\n", a, b, e);
   
    unsigned char f = ~b;

    printf("Hex: ~ %x = %x\n", b, f);
    printf("Decimal: ~ %d = %d\n", b, f);
    
    unsigned char g = a << 2;
    printf("Hex: %x << 2 = %x\n", a, g);
    printf("Decimal: %d << 2 = %d\n", a, g);
   
    unsigned char h = a >> 1;
    printf("Hex: %x >> 1 = %x\n", a, h);
    printf("Decimal: %d >> 1 = %d\n", a, h);

    return 0;
}
