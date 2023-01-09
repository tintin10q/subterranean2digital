#include <stdio.h>
#include <stdlib.h>
#include "subterranean_mem_compact.h"

int main(){
    unsigned char in[4] = {0, 1, 2, 3};
    unsigned char out[32];
    unsigned long long inlen = 0;
    unsigned long long outlen = 32;
    unsigned long long i;
    
    /* Call hash function */
    subterranean_xof_direct(out, outlen, in, inlen);
    
    for(i = 0; i < outlen; i++){
        printf("%02x",out[i]);
    }
    printf("\n");
    
    return 0;
    
    
}