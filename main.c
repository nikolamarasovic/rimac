#include <stdio.h>

int main() 
{
    int a = 6;

    if(a == 5) {
        printf("Build is OK");
        return 0;
    } else {
        printf("Build FAILED");
        return 1;
    }

}
