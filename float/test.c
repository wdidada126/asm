#include <stdio.h>
int main() {
    extern char vector_1, buffer_1;
    printf("vector_1: %p\n", &vector_1);
    printf("buffer_1: %p\n", &buffer_1);
    printf("diff: %ld\n", &buffer_1 - &vector_1);
    return 0;
}
