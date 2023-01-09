#include <stdio.h>
#include <stdlib.h>
#include "subterranean_ref.h"

int main(){
    unsigned char in[4] = {0, 1, 2, 3};
    unsigned char out[32];
    unsigned long long inlen = 1;
    unsigned long long outlen = 32;
    
    unsigned char out_c[32];
    unsigned char out_t[16];
    unsigned char in_k[16] = {0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F};
    unsigned char in_n[16] = {0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F};
    unsigned char in_a[16];
    unsigned char in_m[32];
    unsigned long long in_a_len = 0;
    unsigned long long in_m_len = 0;
    
    unsigned long long i;
    
    /* Call hash function */
    subterranean_xof_direct(out, outlen, in, inlen);
    
    for(i = 0; i < outlen; i++){
        printf("%02x",out[i]);
    }
    printf("\n");
    
    /* Call AEAD function */
    printf("\n");
    printf("\n");
    
    subterranean_SAE_direct_encrypt(out_c, out_t, in_k, 16, in_n, 16, 16, in_a, in_a_len, in_m, in_m_len);

    for(i = 0; i < 16; i++){
        printf("%02x",out_t[i]);
    }
    printf("\n");
    for(i = 0; i < in_m_len; i++){
        printf("%02x",out_c[i]);
    }
    printf("\n");
    
    return 0;
    
    
}