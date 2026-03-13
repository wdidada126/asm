#include <stdio.h>
#include <stdlib.h>
int main() {
    char buffer[] = "1.5 2.5 3.5";
    char *endptr;
    
    printf("Buffer: %s\n", buffer);
    double val = strtod(buffer, &endptr);
    printf("Value: %f, Endptr: %p, End value: %s\n", val, endptr, endptr);
    
    if (endptr > buffer) {
        val = strtod(endptr, &endptr);
        printf("Value2: %f, Endptr2: %p, End value2: %s\n", val, endptr, endptr);
    }
    return 0;
}
