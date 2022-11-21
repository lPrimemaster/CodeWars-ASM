#include <stdio.h>

// Started  : 21/11/2022
// Completed: 21/11/2022
extern long long reverse_num(long long n);

// Started  : 21/11/2022
// Completed: 21/11/2022
extern void middle_char(const char* s, char* buf);

int main(int argc, char* argv[])
{
    long long rnum = -123;
    printf("Reverse of %lld is %lld\n", rnum, reverse_num(rnum));

    char buf[10];
    const char* string = "spectrometer";
    middle_char(string, buf);
    printf("Middle char(s) of %s is %s\n", string, buf);
    return 0;
}