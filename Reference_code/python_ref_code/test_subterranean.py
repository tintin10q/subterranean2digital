#!/usr/bin/python2
# -*- coding: utf-8 -*-

import random

from subterranean_bit import *

import binascii

HASH_SIZE = 256

def integer_to_hex_string(value, size):
    hex_string = ('{0:0'+str(size//4)+'x}').format(hash_value)
    inverted_hex_string = ""
    i = 1
    while(i < len(hex_string)):
        inverted_hex_string += hex_string[len(hex_string) - 1 - i]
        i -= 1 
        inverted_hex_string += hex_string[len(hex_string) - 1 - i]
        i += 3 
    return inverted_hex_string

#message = bytearray.fromhex("00");
#value_bits = bytearray_to_bits(message)
value_bits = []
hash_value_bits = subterranean_xof_direct(value_bits, HASH_SIZE)
#print(str(hash_value_bits).replace(', ', '')[-2:0:-1])
hash_value = bits_to_hex_string(hash_value_bits)
print(hash_value)
#value = 0
#value_bits = integer_to_bits(value, 8)
#hash_value_bits = subterranean_xof_direct(value_bits, HASH_SIZE)
#hash_value = bits_to_integer(hash_value_bits)
#print(integer_to_hex_string(hash_value))

#m = []
#ad = []
#k = [0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F]
#npub = [0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F]
#m_bits = bytearray_to_bits(m)
#ad_bits = bytearray_to_bits(ad)
#npub_bits = bytearray_to_bits(npub)
#k_bits = bytearray_to_bits(k)
#c_bits, t_bits = subterranean_SAE_direct_encrypt(k_bits, npub_bits, ad_bits, m_bits, 16*8)
#joined_c_bits = c_bits + t_bits
#joined_c_str = bits_to_hex_string(joined_c_bits)
##print(str(joined_c_bits).replace(', ', '')[-2:0:-1])
#print(joined_c_str)

