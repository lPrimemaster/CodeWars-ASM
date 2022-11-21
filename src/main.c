#include <stdio.h>

// Started  : 21/11/2022
// Completed: 21/11/2022
extern long long reverse_num(long long n);

// Started  : 21/11/2022
// Completed: 21/11/2022
extern void middle_char(const char* s, char* buf);

// Started  : 21/11/2022
// Completed: 21/11/2022
extern int adjacent_elements_product(int* array, size_t size);

int main(int argc, char* argv[])
{
    long long rnum = -123;
    printf("Reverse of %lld is %lld\n", rnum, reverse_num(rnum));

    char buf[10];
    const char* string = "spectrometer";
    middle_char(string, buf);
    printf("Middle char(s) of %s is %s\n", string, buf);

    // 21
    printf("Largest sum is %d\n", adjacent_elements_product((int[]){ 3, 6, -2, -5, 7, 3 }, 6));
    return 0;
}